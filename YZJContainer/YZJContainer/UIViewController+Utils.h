//
//  UIViewController+Utils.h
//  kdweibo
//
//  Created by hour on 2018/5/12.
//  Copyright © 2018年 www.kingdee.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Utils)

/**
 * AppDelegate.window
 */
+ (UIViewController *)kd_curVC;

/**
 [UIApplication sharedApplication].keyWindow
 */
+(UIViewController *)kd_curKeyWindowVC;

@end
