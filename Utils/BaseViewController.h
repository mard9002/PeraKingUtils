// BaseViewController.h
// PeraKing
//
// Created on 2025-04-18

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 * BaseViewController serves as the foundation for all view controllers in the application.
 * It provides common functionality and UI setup that should be consistent across the app.
 */
@interface BaseViewController : UIViewController

/**
 * Sets up the navigation bar with a title and optional back button.
 *
 * @param title The title to display in the navigation bar
 * @param showBackButton Whether to show the back button or not
 */
- (void)setupNavigationBarWithTitle:(NSString *)title showBackButton:(BOOL)showBackButton;

/**
 * Shows a loading indicator in the center of the view.
 */
- (void)showLoading;

/**
 * Hides the loading indicator if it's currently displayed.
 */
- (void)hideLoading;

/**
 * Shows an alert with a title, message, and OK button.
 *
 * @param title The title of the alert
 * @param message The message to display in the alert
 */
- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message;

/**
 * Shows an alert with custom actions.
 *
 * @param title The title of the alert
 * @param message The message to display in the alert
 * @param actions An array of UIAlertAction objects
 */
- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray<UIAlertAction *> *)actions;


- (void)backButtonTapped;
@end

NS_ASSUME_NONNULL_END
