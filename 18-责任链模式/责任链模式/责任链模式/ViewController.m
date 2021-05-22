//
//  ViewController.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

/**
   正则表达式 [string isMatch:RX(rxSrtring)]

   1. 判断是不是电话号码(手机号以13， 15，18开头，八个 \d 数字字符)
   RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")
 
   2. 判断是不是邮箱
   RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
 
   3. 判断是不是用户名(用户名长度为6-20位之间,大小写字母或者数字均可)
   RX(@"^[A-Za-z0-9]{6,20}+$")
 
 */

#import "ViewController.h"
#import "RegExCategories.h"

#import "HandlerChain.h"
#import "PhoneNum.h"
#import "Email.h"
#import "UserName.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.创建责任对象
    HandlerChain *handler = [[HandlerChain alloc] init];
    
    PhoneNum *phoneNum = [[PhoneNum alloc] init];
    Email *email = [[Email alloc] init];
    UserName *userName = [[UserName alloc] init];
    
    // 2.链接责任链对象
    handler.succcessor = phoneNum;
    phoneNum.succcessor = email;
    email.succcessor = userName;
    
    // 3. 处理请求
    [handler handlerRequest:@"13567867890"];
    [handler handlerRequest:@"Tanzhou@sina.cn"];
    [handler handlerRequest:@"ZhangSan"];
}

@end

