//
//  Banana.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 子类直接实现了父类的方法，遵循里氏替换原则，也属于多态

#import "Banana.h"

@implementation Banana

// 甜
- (void)sweet {
    NSLog(@"Banana 非常甜");
}

// 不好吃
- (void)poorTaste {
    NSLog(@"Banana 不好吃");
}

@end
