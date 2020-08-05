//
//  MACComputer.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 生成者厂商1

#import "MACComputer.h"

@implementation MACComputer

// 处理器
- (void)cpu:(NSString *)cpu {
    NSLog(@"Mac电脑处理器:%@",cpu);
}

// 显卡
- (void)display:(NSString *)display {
    NSLog(@"Mac电脑显卡:%@",display);
}

// 主板
- (void)mainboard:(NSString *)mainboard {
    NSLog(@"Mac电脑主板:%@",mainboard);

}

// 系统
- (void)os {
    NSLog(@"MAC系统");
}

@end
