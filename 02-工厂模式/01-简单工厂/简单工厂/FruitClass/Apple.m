//
//  Apple.m
//  简单工厂
//
//  Created by Alan Ge on 2020/10/2.
//

#import "Apple.h"

@implementation Apple

// 甜
- (void)sweet {
    NSLog(@"Apple 非常甜");
}

// 不好吃
- (void)poorTaste {
    NSLog(@"Apple 不好吃");
}

// 私有方法
// 新鲜的苹果
- (void)freshApple {
    NSLog(@"Apple 新鲜的苹果");
}

@end
