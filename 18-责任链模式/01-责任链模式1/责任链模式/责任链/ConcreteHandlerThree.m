//
//  ConcreteHandlerThree.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "ConcreteHandlerThree.h"

@implementation ConcreteHandlerThree

- (void)handleRequest:(Person *)request {
    NSLog(@"%@不认识", request.name);
}

@end
