//
//  KWSAppModule.m
//  KWSModule
//
//  Created by hour on 2019/2/21.
//

#import "KWSAppModule.h"

@implementation KWSAppModule

- (void)moduleInit {
    NSLog(@"===  moduleInit");
}

// todo
- (void)moduleDestory {
    NSLog(@"===  moduleDestory");
}

- (void)userLogin:(NSDictionary<NSString *, id> *)dict {
    NSLog(@"===  userLogin");
}

- (void)userLogout {
    NSLog(@"===  userLogout");
}

- (void)languageChanged:(YZJLanguageType)type {
    NSLog(@"===  languageChanged");
}

@end
