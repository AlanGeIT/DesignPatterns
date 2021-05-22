//
//  ViewController.m
//  Builder_Mac
//
//  Created by Alan Ge on 2020/10/4.
//

/*
 使用构建者模式的需求: 客户要店主一台苹果电脑, 电脑有CPU 显卡  主板 系统
 
 组装者(指导者): 店主(Director)
 构建者: 苹果电脑  (协议)
 生成者: CPU 显卡 主板  系统
 */

#import "ViewController.h"
#import "Director.h"
#import "MacComputerBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"-------------------- 第一种构建方式 --------------------");
    // 第一种构建方式
    id<MacBuilder> build1 = [[MacComputerBuilder alloc] init];
    // 构建者
    Director *director = [[Director alloc] initWithBuilder:build1];
    [director constructCPU:@"Intel i8" display:@"独立显卡" mainboard:@"超级主板"];
    
    NSLog(@"-------------------- 第二种构建方式 --------------------");
    // 第二种方式
    id<MacBuilder> build2 = [[MacComputerBuilder alloc] init];
    // 构建者
    id<MacComputerProtocol> com = [[[[build2 buildCPU:@"Intel i8"] buildDisplay:@"du li xian ka"] buildMainboard:@"zhu ban"] build];
    
    NSLog(@"com = %@", com);
    
}

@end
