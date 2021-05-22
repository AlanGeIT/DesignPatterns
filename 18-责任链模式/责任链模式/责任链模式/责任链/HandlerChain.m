//
//  HandlerChain.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "HandlerChain.h"

@interface HandlerChain ()

@property (nonatomic, strong) id<UserProtocol> nextSucccessor;

@end

@implementation HandlerChain

// 处理请求的接口
- (void)handlerRequest:(id)request {
    [self.nextSucccessor handlerRequest:request];
}

// nextSucccessor的set方法
- (void)setSucccessor:(id<UserProtocol>)succcessor {
    self.nextSucccessor = succcessor;
}

// nextSucccessor的get方法
- (id<UserProtocol>)succcessor {
    return self.nextSucccessor;
}

@end
