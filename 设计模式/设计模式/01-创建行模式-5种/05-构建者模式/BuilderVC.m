//
//  BuilderVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "BuilderVC.h"

@interface BuilderVC ()

@end

@implementation BuilderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"构建者模式";
    
    [self setupDataArr:@[@[@"01-第一种",@"BuilderOneVC"],
                         @[@"02-第二种",@"BuilderMacVC"],
                         @[@"03-第三种",@"DrawBuilderVC.storyboard"]
                        ]];
}

@end
