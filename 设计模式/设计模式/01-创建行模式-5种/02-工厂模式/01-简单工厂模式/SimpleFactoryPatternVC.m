//
//  SimpleFactoryPatternVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "SimpleFactoryPatternVC.h"
#import "FruitsFactory.h"

@interface SimpleFactoryPatternVC ()

@end

@implementation SimpleFactoryPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 在水果工厂里面创建出苹果
    Fruits *fruits = [FruitsFactory fruitsFactory:kApple];
    [fruits sweet];
    
    // 在水果工厂里面创建出苹果，调用私有的方法
    Apple *apple = (Apple *)[FruitsFactory fruitsFactory:kApple];
    [apple freshApple];
    
    // 在水果工厂里面创建出橘子，调用私有的方法
    Orange *orange = (Orange *)[FruitsFactory fruitsFactory:kOrange];
    [orange acidOrange];
}

@end
