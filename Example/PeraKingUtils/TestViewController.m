//
//  TestViewController.m
//  PeraKingUtils_Example
//  
//  Created by wealon on 2025.
//  PeraKingUtils_Example.
//  
    

#import "TestViewController.h"
#import <PeraKingUtils/ATVerificationCodeView.h>
#import <PeraKingUtils/PeraKingUtils-Swift.h>
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    ATVerificationCodeView *view =
    self.view.backgroundColor = UIColor.yellowColor;
    // 验证码视图
    ATVerificationCodeView *verificationCodeView = [[ATVerificationCodeView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 50) codeLength:6];
//    self.verificationCodeView.hidden = YES;
//    verificationCodeView.delegate = self;
    [self.view addSubview:verificationCodeView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
