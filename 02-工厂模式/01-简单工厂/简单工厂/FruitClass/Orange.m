//
//  Orange.m
//  简单工厂
//
//  Created by Alan Ge on 2020/10/2.
//

#import "Orange.h"

@implementation Orange

// 甜
- (void)sweet {
    NSLog(@"Orange 非常甜");
}

// 不好吃
- (void)poorTaste {
    NSLog(@"Orange 不好吃");
}

// 私有方法
/**< 酸橘子 */
- (void)acidOrange {
    NSLog(@"Orange 有点酸");
}

@end
