//
//  AbstarctProxy.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/5.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "AbstarctProxy.h"
#import "AbstarctSpamMessages.h"
#import <objc/message.h>

@implementation AbstarctProxy

// 方法签名
- (nullable NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    // 如果支持这个消息,就将这个方法签名返回回去
    if ([self.delegate respondsToSelector:sel]) {
        return [self.delegate methodSignatureForSelector:sel];
    } else {
        AbstarctSpamMessages *message = [AbstarctSpamMessages sharedInstance];
        return [message methodSignatureForSelector:NSSelectorFromString(@"emptySpamMessages:withString:")];
    }
}

// 配发消息
- (void)forwardInvocation:(NSInvocation *)invocation {
    // 1. 获取SEL
    SEL selector = [invocation selector];
    
    // 2. 判断代理响应
    if ([self.delegate respondsToSelector:selector]) {
        // 设置代理
        [invocation setTarget:self.delegate];
        // 执行方法,派发消息
        [invocation invoke];
    }
    else {
        //  获取参数
       NSString *selectorString = NSStringFromSelector(invocation.selector);
        // 1.替换
        invocation.selector = NSSelectorFromString(@"emptySpamMessages:withString:");
        // 2.再次回去单例对象
         AbstarctSpamMessages *message = [AbstarctSpamMessages sharedInstance];
        // 3. 设置代理. 代理就是专门处理垃圾数据的一个对象
        [invocation setTarget:message];
        
        // 获取当前控制器的类(ContentProxy)
        const char *className = class_getName([self class]);
        NSArray *parmater = nil;
        NSString *str = @"666";
        
        // 判断代理
        if (self.delegate) {
            parmater = @[[NSString stringWithUTF8String:className], selectorString,str];
        } else {
            parmater = @[[NSString stringWithUTF8String:className], selectorString];
        }
        // 因为0 1 被两个隐式参数占用self,_cmd. 分别表示的是target和selector
        [invocation setArgument:&parmater atIndex:2];
        [invocation setArgument:&str atIndex:3];
        // 执行方法,派发消息
        [invocation invoke];
    }
}

@end
