//
//  ConcreteHandlerOne.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "ConcreteHandlerOne.h"

@implementation ConcreteHandlerOne

- (void)handleRequest:(Person *)request {
    // 判断
    if ([request.name isEqualToString:@"zhangsan"]) {
        NSLog(@"zhangsan：%@来了", request.name);
    } else {
        NSLog(@"zhangsan：%@没来",request.name);
        [self.successor handleRequest:request];
    }
}

@end

