//
//  BuilderOneVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "BuilderOneVC.h"
#import "GenerateOne.h"
#import "DirectorOne.h"

@interface BuilderOneVC ()

@end

@implementation BuilderOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.创建生成者，知道要做的产品
    GenerateOne *build = [[GenerateOne alloc] init];
    NSString *str2 = [build builderPart];
    
    // 2.创建承包商
    DirectorOne *director = [[DirectorOne alloc] initWithBuilder:build];
    
    // 3.交付产品
    NSString *str = [director construct];
    NSLog(@"str = %@, str2 = %@",str, str2);
    
}


@end
