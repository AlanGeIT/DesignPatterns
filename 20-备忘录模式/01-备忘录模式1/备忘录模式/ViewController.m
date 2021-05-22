//
//  ViewController.m
//  备忘录模式
//
//  Created by Alan Ge on 2020/10/8.
//

// FastCoder配置：Build Phases -> FastCoder.m -> -fno-objc-arc

#import "ViewController.h"
#import "MementoCenter.h"
#import "Apple.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    Apple *apple = [[Apple alloc] init];
    apple.name = @"富士苹果";
    apple.age = @(10);

    // 存
    [MementoCenter saveMementoObject:apple withKey:@"Apple"];
    
    // 取
    [apple recoverFromState:[MementoCenter mementoObjectWithKey:@"Apple"]];
    
    NSLog(@"name: %@  age:%@", apple.name, apple.age);
}

@end
