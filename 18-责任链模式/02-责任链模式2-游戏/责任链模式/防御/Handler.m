//
//  Handler.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "Handler.h"

@implementation Handler

- (void)handleRequest:(GongJi *)attack {
    // 如果不能响应, 就把请求转发给successor来处理就行了
    [self.nextHandler handleRequest:attack];
}

@end
