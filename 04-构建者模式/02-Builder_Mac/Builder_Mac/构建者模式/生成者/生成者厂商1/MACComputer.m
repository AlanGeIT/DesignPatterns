//
//  MACComputer.m
//  Builder_Mac
//
//  Created by Alan Ge on 2020/10/4.
//

// 生成者厂商1
// 扩展生成者来处理最后的结果

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
