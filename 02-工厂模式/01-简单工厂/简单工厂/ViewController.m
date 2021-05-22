//
//  ViewController.m
//  简单工厂
//
//  Created by Alan Ge on 2020/10/2.
//

#import "ViewController.h"
#import "FruitsFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 在水果工厂里面创建出苹果
    Fruits *fruits = [FruitsFactory fruitsFactory:kApple];
    [fruits sweet];
    
    // 在水果工厂里面创建出苹果，调用私有的方法
    Apple *apple = (Apple *)[FruitsFactory fruitsFactory:kApple];
    [apple freshApple];
    
    // 在水果工厂里面创建出橘子，调用私有的方法
    Orange *orange = (Orange *)[FruitsFactory fruitsFactory:kOrange];
    [orange acidOrange];
    
    Banana *banana = (Banana *)[FruitsFactory fruitsFactory:kBanana];
    [banana poorTaste];
}


@end
