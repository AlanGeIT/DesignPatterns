//
//  KuiJia.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

// 盔甲

#import "KuiJia.h"
#import "WuQi.h"

@implementation KuiJia

-(void)handleRequest:(GongJi *)request {

    if ([request isKindOfClass:[WuQi class]]) {
        NSLog(@"1.攻击没有通过这个盔甲");
    } else {
        NSLog(@"1.不是武器攻击,防不住,其它去处理---%@", [WuQi class]);
        [self.nextHandler handleRequest:request];
    }
}

@end
