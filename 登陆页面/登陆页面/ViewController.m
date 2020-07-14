//
//  ViewController.m
//  登陆页面
//
//  Created by 仲雯 on 2020/7/14.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //用户名提示标签创建
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 60, 80, 40);
    _lbUserName.text = @"Name:";
    _lbUserName.font = [UIFont systemFontOfSize:12];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    //密码提示标签创建
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 140, 80, 40);
    _lbPassword.text = @"Password";
    _lbPassword.font = [UIFont systemFontOfSize:12];
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入框
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 60, 180, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    //密码输入框
    _tfPassword = [[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry = YES;
    
    //登陆和注册的button
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    [_btLogin setTitle:@"登陆" forState:UIControlStateNormal];
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(120, 360, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    
    
}
-(void) pressLogin {
    NSString* StrName = @"Jack";
    NSString* StrPass = @"11111";
    
    //获取输入框的文字信息
    NSString* StrTextName = _tfUserName.text;
    NSString* StrTextPass = _tfPassword.text;
    
    if ([StrName isEqualToString:StrTextName] && [StrPass isEqualToString:StrTextPass]) {
        
        NSLog(@"登陆成功！");
    }
    else {
        NSLog(@"用户名或密码错误");
    }
    
}
 
- (void) pressRegister{
    
}


-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}
@end
