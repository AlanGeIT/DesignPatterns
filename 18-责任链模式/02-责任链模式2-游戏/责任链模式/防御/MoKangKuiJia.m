//
//  MoKangKuiJia.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

// 魔抗盔甲

#import "MoKangKuiJia.h"
#import "MoFa.h"

@implementation MoKangKuiJia
-(void)handleRequest:(GongJi *)request {
    
    if ([request isKindOfClass:[MoFa class]]) {
        NSLog(@"2.攻击没有通过这个魔抗盔甲");
    } else {
        NSLog(@"2.不是魔法攻击,防不住,其它去处理---%@", [MoFa class]);
        [self.nextHandler handleRequest:request];
    }
}
@end
