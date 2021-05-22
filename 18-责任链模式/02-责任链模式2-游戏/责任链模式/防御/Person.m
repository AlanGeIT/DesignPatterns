//
//  Person.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "Person.h"

@implementation Person

- (void)handleRequest:(GongJi *)request {
    NSLog(@"被--%@--伤害到了",[request class]);
}

@end
