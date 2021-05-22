//
//  Handler.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "Handler.h"

@implementation Handler

- (void)handleRequest:(Person *)request {
    
    // 如果不知道请求，就把请求给successor
    [self.successor handleRequest:request];
}

@end
