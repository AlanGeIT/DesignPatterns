//
//  CheatGameDecotor.m
//  装饰模式
//
//  Created by Alan Ge on 2020/10/6.
//

// 装饰者子类

#import "CheatGameDecotor.h"

@implementation CheatGameDecotor

- (void)cheat {
    
    // 作弊操作
    [self up];
    [self up];
    
    [self down];
    [self down];
    
    [self commandA];
    [self commandA];
}

@end
