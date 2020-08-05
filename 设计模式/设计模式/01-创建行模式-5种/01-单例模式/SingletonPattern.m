//
//  SingletonPattern.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "SingletonPattern.h"

@implementation SingletonPattern

+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    static SingletonPattern *instance;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self shareInstance];
}

- (id)copyWithZone:(nullable NSZone *)zone{
    return self;
}

@end
