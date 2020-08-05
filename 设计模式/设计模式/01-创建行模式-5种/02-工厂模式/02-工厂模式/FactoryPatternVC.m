//
//  FactoryPatternVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "FactoryPatternVC.h"
#import "ColorViewGenerator.h"
#import "RedViewGenerator.h"
#import "BlueViewGenerator.h"

@interface FactoryPatternVC ()

@end

@implementation FactoryPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.创建一个工厂类
    ColorViewGenerator *colorGen1 = [[RedViewGenerator alloc] init];
    CGRect rect1 = CGRectMake(0, 80, 250, 250);
    ColorView *red = [colorGen1 colorViewWithFrame:rect1];
    
    // 2.添加
    [self.view addSubview:red];
    
    // 1.创建一个工厂类
    ColorViewGenerator *colorGen2 = [[BlueViewGenerator alloc] init];
    CGRect rect2 = CGRectMake(0, 350, 250, 250);
    ColorView *blue = [colorGen2 colorViewWithFrame:rect2];
    
    // 2.添加
    [self.view addSubview:blue];
}

@end
