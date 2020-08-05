//
//  HomeVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设计模式";
    
    [self setupDataArr:@[@[@"01、单例模式",@"SingletonPatternVC.storyboard"],
                         @[@"02-工厂模式",@"FactoryVC"],
                         @[@"03-抽象工厂",@"AbstractFactoryVC"],
                         @[@"04-原型模式",@"PrototypeVC"],
                         @[@"05-构建者模式",@"BuilderVC"],
                         @[@"06-代理模式",@"DelegatePatternVC"]
                        ]];
}

@end
