//
//  ViewController.m
//  备忘录模式
//
//  Created by Alan Ge on 2020/10/8.
//

// FastCoder配置：Build Phases -> FastCoder.m -> -fno-objc-arc

#import "ViewController.h"
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
    [apple saveStateWithKey:@"Apples"];
    // 取
    [apple recoverFromStateWithKey:@"Apples"];
    
    NSLog(@"name: %@  age:%@", apple.name, apple.age);
}


@end
