//
//  AbstarctSpamMessages.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/5.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "AbstarctSpamMessages.h"

@implementation AbstarctSpamMessages

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

// 空的垃圾机制方法
- (void)emptySpamMessages:(NSArray *)parameter withString:(NSString *)str{
    NSLog(@"处理垃圾消息");
}

@end
