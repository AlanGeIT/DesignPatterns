//
//  AbstarctProxy.m
//  NSProxy
//
//  Created by Alan Ge on 2020/10/4.
//

#import "AbstarctProxy.h"
#import "AbstarctSpamMessages.h"
#import <objc/message.h>

@implementation AbstarctProxy

// 生成方法签名
- (nullable NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    // 如果支持这个消息,就将这个方法签名返回回去
    if ([self.delegate respondsToSelector:sel]) {// 代理有实现方法时
        return [self.delegate methodSignatureForSelector:sel];
    } else {// 代理没有实现方法时
        // AbstarctSpamMessages：专门处理立即消息的类
        AbstarctSpamMessages *message = [AbstarctSpamMessages sharedInstance];
        return [message methodSignatureForSelector:NSSelectorFromString(@"emptySpamMessages:withString:")];
    }
}

// 方法签名配发，配发消息
- (void)forwardInvocation:(NSInvocation *)invocation {
    // 1. 获取SEL
    SEL selector = [invocation selector];
    
    // 2. 判断代理响应
    if ([self.delegate respondsToSelector:selector]) {// 代理响应方法
        // 设置代理
        [invocation setTarget:self.delegate];
        // 执行方法，派发消息
        [invocation invoke];
    }
    else {// 代理不响应方法
        // 获取参数
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
        // 设置参数
        // 因为0 1 被两个隐式参数占用self,_cmd. 分别表示的是target和selector，所以从2开始
        [invocation setArgument:&parmater atIndex:2];   // 第三个参数
        [invocation setArgument:&str atIndex:3];        // 第四个参数
        
        // 4.执行方法,派发消息
        [invocation invoke];
    }
}

@end

