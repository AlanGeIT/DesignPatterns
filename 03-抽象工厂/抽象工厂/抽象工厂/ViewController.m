//
//  ViewController.m
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

/*
    抽象工厂
    1. 通过对象组合创建抽象产品
    2. 创建多个系列产品
    3. 必须修改父类的接口才能支持新的产品
 
    工厂方法
    1.通过类继承创建抽象产品
    2.创建一种产品
    3.子类化创建并重写工厂方法来创建新产品
 
 最主要的区别：
    工厂方法: 多个产品抽象   抽象工厂: 是对工厂抽象
 */

#import "ViewController.h"
#import "RedViewFactory.h"
#import "BlueViewFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *red = [RedViewFactory colorView];
    UIButton *btn = [RedViewFactory buttonView];
    [self.view addSubview:btn];
    [self.view addSubview:red];
    
    UIView *blue = [BlueViewFactory colorView];
    UIButton *blueBtn = [BlueViewFactory buttonView];
    [self.view addSubview:blue];
    [self.view addSubview:blueBtn];
}

@end
