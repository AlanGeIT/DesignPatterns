//
//  ViewController.m
//  工厂方法
//
//  Created by Alan Ge on 2020/10/2.
//

#import "ViewController.h"
#import "ColorViewGenerator.h"
#import "RedViewGenerator.h"
#import "BlueViewGenerator.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.创建一个工厂类
    ColorViewGenerator *colorGen = [[RedViewGenerator alloc] init];
    CGRect rect1 = CGRectMake(0, 0, 100, 100);
    ColorView *red = [colorGen colorViewWithFrame:rect1];
    
    // 2.添加
    [self.view addSubview:red];
    
    // 1.创建一个工厂类
    ColorViewGenerator *colorBlue = [[BlueViewGenerator alloc] init];
    CGRect rect2 = CGRectMake(0, 200, 100, 100);
    ColorView *blue = [colorBlue colorViewWithFrame:rect2];
    
    // 2.添加
    [self.view addSubview:blue];
}

@end
