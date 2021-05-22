//
//  AbstarctSpamMessages.m
//  NSProxy
//
//  Created by Alan Ge on 2020/10/4.
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

// 空的垃圾机制方法 -- 代理没有实现代理方法时就会走这个方法
- (void)emptySpamMessages:(NSArray *)parameter withString:(NSString *)str{
    NSLog(@"处理垃圾消息--%@ \n str=%@", parameter,str);
}

@end
