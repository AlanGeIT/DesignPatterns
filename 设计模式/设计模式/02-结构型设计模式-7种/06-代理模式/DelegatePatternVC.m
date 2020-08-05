//
//  DelegatePatternVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "DelegatePatternVC.h"

@interface DelegatePatternVC ()

@end

@implementation DelegatePatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"代理模式";
    
    [self setupDataArr:@[@[@"01-代理原理",@"DelegatePrincipleVC"],
                         @[@"02-NSProxyDemo",@"NSProxyVC"]
                        ]];
}

@end
