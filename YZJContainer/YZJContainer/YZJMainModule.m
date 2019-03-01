//
//  YZJMainModule.m
//  YZJContainer
//
//  Created by hour on 2019/2/21.
//  Copyright © 2019 hour. All rights reserved.
//

#import "YZJMainModule.h"

#import "ViewController.h"
#import "UIViewController+Utils.h"

@implementation YZJMainModule

- (void)moduleInit {
    
}

// todo
- (void)moduleDestory {
    
}

- (void)userLogin:(NSDictionary<NSString *, id> *)dict {
    ViewController *vc = (ViewController *)[[UIApplication sharedApplication].keyWindow.rootViewController childViewControllers][0];
    vc.label.text = @"用户状态：已登录";
}

- (void)userLogout {
    ViewController *vc = (ViewController *)[[UIApplication sharedApplication].keyWindow.rootViewController childViewControllers][0];
    vc.label.text = @"用户状态：未登录";
}

- (void)languageChanged:(YZJLanguageType)type {
}

@end
