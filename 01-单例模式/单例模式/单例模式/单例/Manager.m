//
//  Manager.m
//  单例模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import "Manager.h"

@implementation Manager

+ (id)sharedInstance
{
    // 静态局部变量
    static Manager *instance = nil;
    
    // 通过dispatch_once方式 确保instance在多线程环境下只被创建一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // 创建实例
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

// 重写方法【必不可少】
+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

// 重写方法【必不可少】
- (id)copyWithZone:(nullable NSZone *)zone{
    return self;
}

@end
