//
//  BINavigatorImp.m
//  BIMediator
//
//  Created by xinwen on 2020/5/14.
//  Copyright © 2020 baidu. All rights reserved.
//

#import "BINavigatorImp.h"

@interface BINavigatorImp ()

@property (nonatomic, strong) UINavigationController *navi;

@end

@implementation BINavigatorImp

- (instancetype)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)pushVC:(UIViewController *)destVC animated:(BOOL)animated {
    if (!destVC) {
        return;
    }
    
    UIViewController *viewController = destVC;
    [self.navigationController pushViewController:viewController animated:animated];
}

#pragma mark - Helper
- (UIViewController *)topViewController {
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    return topController;
}

- (UINavigationController *)navigationController {
    UINavigationController *navigationController = (UINavigationController *)[self topViewController];
    
    if (![navigationController isKindOfClass:[UINavigationController class]]) {
        if ([navigationController isKindOfClass:[UITabBarController class]]) {
            UITabBarController *tabbarController = (UITabBarController *)navigationController;
            navigationController = tabbarController.selectedViewController;
            if (![navigationController isKindOfClass:[UINavigationController class]]) {
                navigationController = tabbarController.selectedViewController.navigationController;
            }
        } else {
            navigationController = navigationController.navigationController;
        }
    }
    if (navigationController) {
        return navigationController;
    } else {
        return nil;
    }
}

@end
