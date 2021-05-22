//
//  ViewController.m
//  外观模式
//
//  Created by Alan Ge on 2020/10/7.
//

//  需求: 添加一个教练，教学生学车。同时它也具备Car类的使用
//  开闭原则

#import "ViewController.h"
#import "CarDriver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [CarDriver driveToLocation:@"帝都"];
}

@end
