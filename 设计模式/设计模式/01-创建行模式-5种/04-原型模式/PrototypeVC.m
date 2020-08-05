//
//  PrototypeVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "PrototypeVC.h"
#import "StudentModel.h"

@interface PrototypeVC ()

@end

@implementation PrototypeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 学生1
    StudentModel *stu1 = [[StudentModel alloc] init];
    stu1.name = @"张三";
    stu1.age = @(18);
    stu1.address = @"广州";
    stu1.totalScore = @(100);
    
    // 学生2
//    StudentModel *stu2 = [[StudentModel alloc] init];
//    stu2.name = @"李四";
//    stu2.age = @(20);
//    stu2.address = @"广州";
//    stu2.totalScore = @(88);
    
    // 学生3
    StudentModel *stu3 = [stu1 clone];
    stu3.name = @"王五";
    
    NSLog(@"stu1 = %@",stu1);
    NSLog(@"stu3 = %@",stu3);
}
@end
