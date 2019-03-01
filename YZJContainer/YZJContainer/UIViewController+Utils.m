//
//  UIViewController+Utils.m
//  kdweibo
//
//  Created by hour on 2018/5/12.
//  Copyright © 2018年 www.kingdee.com. All rights reserved.
//

#import "UIViewController+Utils.h"

@implementation UIViewController (Utils)

+ (UIViewController *)findTopmostViewController:(UIViewController *)rootViewController {
    if (rootViewController.presentedViewController) {
        return [self findTopmostViewController:rootViewController.presentedViewController];
    } else if ([rootViewController isKindOfClass:[UISplitViewController class]]) {
        UISplitViewController *svc = (UISplitViewController *)rootViewController;
        if (svc.viewControllers.count) {
            return [self findTopmostViewController:svc.viewControllers.lastObject];
        } else {
            return rootViewController;
        }
    } else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navi = (UINavigationController *)rootViewController;
        if (navi.viewControllers.count) {
            return [self findTopmostViewController:[navi.viewControllers lastObject]];
        } else {
            return rootViewController;
        }
    } else if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)rootViewController;
        if (tabBarController.viewControllers.count) {
            return [self findTopmostViewController:tabBarController.selectedViewController];
        } else {
            return rootViewController;
        }
    } else {
        return rootViewController;
    }
}

+ (UIViewController *)kd_curVC {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    return [self findTopmostViewController:rootViewController];
}


+(UIViewController *)kd_curKeyWindowVC {
    UIViewController* viewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    return [UIViewController findTopmostViewController:viewController];
}

@end
