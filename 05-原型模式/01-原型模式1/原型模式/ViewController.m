//
//  ViewController.m
//  原型模式
//
//  Created by Alan Ge on 2020/10/7.
//

#import "ViewController.h"
#import "StudentModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 学生1
    StudentModel *stu1 = [[StudentModel alloc] init];
    stu1.name = @"张三";
    stu1.age = @(18);
    stu1.address = @"帝都";
    stu1.totalScore = @(99);
    
    // 学生2
//    StudentModel *stu2 = [[StudentModel alloc] init];
//    stu2.name = @"李四";
//    stu2.age = @(18);
//    stu2.address = @"帝都";
//    stu2.totalScore = @(99);
    
    // 学生3 - 通过原型模式copy
    StudentModel *stu3 = [stu1 clone];
    stu3.name = @"王五";
    
    NSLog(@"stu1 = %@",stu1);
    NSLog(@"stu3 = %@",stu3);
}

@end

