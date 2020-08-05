//
//  BuilderMacVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

/*
使用构建者模式的需求: 客户要店主一台苹果电脑, 电脑有CPU 显卡  主板 系统

组装者(指导者): 店主(Director)
构建者: 苹果电脑  (协议)
生成者: CPU 显卡 主板  系统
*/

#import "BuilderMacVC.h"
#import "MacDirector.h"
#import "MacComputerBuilder.h"

@interface BuilderMacVC ()

@end

@implementation BuilderMacVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 第一种构建方式
    id<MacBuilder> build1 = [[MacComputerBuilder alloc] init];
    // 构建者
    MacDirector *director = [[MacDirector alloc] initWithBuilder:build1];
    [director constructCPU:@"Intel i8" display:@"独立显卡" mainboard:@"超级主板"];
    
    // 第二种方式
    id<MacBuilder> build2 = [[MacComputerBuilder alloc] init];
    // 构建者
    id<MacComputerProtocol> com = [[[[build2 buildCPU:@"Intel i8"] buildDisplay:@"du li xian ka"] buildMainboard:@"zhu ban"] build];
    
    NSLog(@"com = %@", com);
}

@end
