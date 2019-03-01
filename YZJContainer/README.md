
### 概述

YZJContainer 是云之家提供的壳项目，供第三方用来开发可嵌入云之家App的模块代码。

每个模块作为一个单独的Pod项目来开发，最后通过 CocoaPods 集成到云之家App中。

### Pod模块

KWSModule Pod库是创建的一个Demo Pod，第三方的功能可以直接在里面进行开发。 

在 Pod 项目中可以直接修改代码，编译运行。如果有增加资源文件 或者 增加、删除了源码文件，需要在 YZJContainer 项目的根目录执行命令，更新Pod：

```
pod udpate --no-repo-update
```


### 模块回调接口

每个模块对应 实现一个 YZJBaseAppModule 的子类，以 KWSAppModule 为例：

```
@interface KWSAppModule : YZJBaseAppModule

// App启动后 加载模块会调用
- (void)moduleInit;

// todo 未实现
- (void)moduleDestory;

// 用户登录后回调；如果已经登录，启动App后也会调用
- (void)userLogin:(NSDictionary<NSString *, id> *)dict;

// 用户退出登录
- (void)userLogout;

// 切换语言时会调用 现在有中文：YZJLanguageTypeChinese 英文：YZJLanguageTypeEnglish
- (void)languageChanged:(YZJLanguageType)type;

@end
```




