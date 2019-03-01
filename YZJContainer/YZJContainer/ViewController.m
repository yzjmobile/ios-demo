//
//  ViewController.m
//  YZJContainer
//
//  Created by hour on 2019/2/21.
//  Copyright © 2019 hour. All rights reserved.
//

#import "ViewController.h"


#import <Masonry/Masonry.h>

@import YZJLogin;

@interface ViewController ()


@property (nonatomic, strong) UIButton *btnLogin, *btnLogout;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self.label];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(150);
        make.height.mas_equalTo(30);
        make.left.mas_equalTo(self.view).mas_offset(50);
        make.top.mas_equalTo(self.view).mas_offset(120);
    }];
    
    [self.view addSubview:self.btnLogin];
    [self.btnLogin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(50);
        make.left.mas_equalTo(self.view).mas_offset(50);
        make.top.mas_equalTo(self.view).mas_offset(200);
    }];
    [self.btnLogin addTarget:self action:@selector(actionBtnLogin:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.btnLogout];
    [self.btnLogout mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(50);
        make.left.mas_equalTo(self.btnLogin.mas_right).mas_offset(30);
        make.top.mas_equalTo(self.btnLogin);
    }];
    [self.btnLogout addTarget:self action:@selector(actionBtnLogout:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UILabel *)label {
    if (_label == nil) {
        _label = [[UILabel alloc] init];
        _label.text = @"用户状态：未登录";
        if ([YZJLoginManager sharedInstance].isLogin) {
            _label.text = @"用户状态：已登录";
        }
        _label.backgroundColor = [UIColor whiteColor];
    }
    return _label;
}

- (UIButton *)btnLogin {
    if (_btnLogin == nil) {
        _btnLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btnLogin.backgroundColor = [UIColor whiteColor];
        [_btnLogin setTitle:@"点击登录" forState:UIControlStateNormal];
    }
    
    return _btnLogin;
}

- (UIButton *)btnLogout {
    if (_btnLogout == nil) {
        _btnLogout = [[UIButton alloc] init];
        _btnLogout = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btnLogout.backgroundColor = [UIColor whiteColor];
        [_btnLogout setTitle:@"退出登录" forState:UIControlStateNormal];
    }
    
    return _btnLogout;
}

- (void)actionBtnLogin:(id)sender {
    [[YZJLoginManager sharedInstance] login];
}

- (void)actionBtnLogout:(id)sender {
    [[YZJLoginManager sharedInstance] logout];
}

@end
