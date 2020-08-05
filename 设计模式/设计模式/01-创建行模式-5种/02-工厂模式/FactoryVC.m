//
//  FactoryVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "FactoryVC.h"

@interface FactoryVC ()

@end

@implementation FactoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"工厂模式";
    
    [self setupDataArr:@[@[@"01-简单工厂模式",@"SimpleFactoryPatternVC"],
                         @[@"02-工厂模式",@"FactoryPatternVC"],
                        ]];
}

@end
