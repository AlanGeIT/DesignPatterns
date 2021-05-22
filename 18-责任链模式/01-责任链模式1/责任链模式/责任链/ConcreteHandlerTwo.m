//
//  ConcreteHandlerTwo.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "ConcreteHandlerTwo.h"

@implementation ConcreteHandlerTwo

- (void)handleRequest:(Person *)request {
    if ([request.name isEqualToString:@"lisi"]) {
        NSLog(@"lisi：%@来了",request.name);
    } else {
        NSLog(@"lisi：%@没来", request.name);
        [self.successor handleRequest:request];
    }
}
@end
