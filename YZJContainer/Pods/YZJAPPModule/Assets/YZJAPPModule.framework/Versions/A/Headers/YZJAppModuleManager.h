//
//  YZJAppModuleManager.h
//  AFNetworking
//
//  Created by hour on 2019/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, YZJLanguageType) {
    YZJLanguageTypeChinese  = 1,
    YZJLanguageTypeEnglish  = 2
};

@interface YZJBaseAppModule : NSObject

- (void)moduleInit;

// todo
- (void)moduleDestory;

- (void)userLogin:(NSDictionary<NSString *, id> *)dict;
- (void)userLogout;

- (void)languageChanged:(YZJLanguageType)type;

@end

@interface YZJAppModuleManager : NSObject

+ (instancetype)sharedInstance;


@end

NS_ASSUME_NONNULL_END
