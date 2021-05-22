//
//  Handler.h
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>
#import "GongJi.h"

@interface Handler : NSObject

// 下一个响应者
@property (nonatomic, strong) Handler *nextHandler;

// 处理请求的接口
- (void)handleRequest:(GongJi *)request;

@end
