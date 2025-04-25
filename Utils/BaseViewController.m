// BaseViewController.m
// PeraKing
//
// Created on 2025-04-18

#import "BaseViewController.h"
#import "PeraKing-Swift.h"
@interface BaseViewController ()

@property (nonatomic, strong) UIActivityIndicatorView *loadingIndicator;

@end

@implementation BaseViewController

#pragma mark - Lifecycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    [self setupLoadingIndicator];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // Common setup for viewWillAppear
}

#pragma mark - Setup Methods

- (void)setupView {
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Hide 'Back' title from back button
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" 
                                                                             style:UIBarButtonItemStylePlain 
                                                                            target:nil 
                                                                            action:nil];
    
//    [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_icon"] style:(UIBarButtonItemStylePlain) target:self action: @selector(backTap)]
}

- (void)setupLoadingIndicator {
    self.loadingIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
    self.loadingIndicator.color = [UIColor grayColor];
    self.loadingIndicator.hidesWhenStopped = YES;
    self.loadingIndicator.center = self.view.center;
    [self.view addSubview:self.loadingIndicator];
    
    // Configure autolayout
    self.loadingIndicator.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.loadingIndicator.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.loadingIndicator.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor]
    ]];
}

- (void)setupNavigationBarWithTitle:(NSString *)title showBackButton:(BOOL)showBackButton {
    self.title = title;
    
    if (!showBackButton) {
        self.navigationItem.hidesBackButton = YES;
    } else {
        // Custom back button if needed
        UIImage *backImage = [UIImage imageNamed:@"back_icon"];
        if (backImage) {
            UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:backImage
                                                                           style:UIBarButtonItemStylePlain
                                                                          target:self
                                                                          action:@selector(backButtonTapped)];
            self.navigationItem.leftBarButtonItem = backButton;
        }
    }
}

#pragma mark - Action Methods

- (void)backButtonTapped {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Loading Indicator Methods

- (void)showLoading {
    // Move to the main thread if not already there
    if (![NSThread isMainThread]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self showLoading];
        });
        return;
    }
    
    [self.loadingIndicator startAnimating];
}

- (void)hideLoading {
    // Move to the main thread if not already there
    if (![NSThread isMainThread]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self hideLoading];
        });
        return;
    }
    
    [self.loadingIndicator stopAnimating];
}

#pragma mark - Alert Methods

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                             message:message
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil];
    [alertController addAction:okAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray<UIAlertAction *> *)actions {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                             message:message
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    for (UIAlertAction *action in actions) {
        [alertController addAction:action];
    }
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end 
