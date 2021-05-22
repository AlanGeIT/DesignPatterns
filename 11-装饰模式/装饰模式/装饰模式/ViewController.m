//
//  ViewController.m
//  装饰模式
//
//  Created by Alan Ge on 2020/10/6.
//

/**
 装饰模式:动态的给一个对象添加一些额外的职责. 就扩展功能来说, 装饰模式相比生成子类更为灵活
 
 特点：
 1.不会改变原始类
 2.不改变使用继承
 3.扩展对象的功能
 */

#import "ViewController.h"
#import "GameLoL.h"         // 被装饰的类
#import "GameDecortor.h"    // 装饰者
#import "CheatGameDecotor.h"// 装饰者子类
#import "GameLoL+Cheat.h"   // 分类形式装饰
#import "GameLoL+Coin.h"
#import "CoinGameDecorator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 被装饰者
    GameLoL *gameLoL = [[GameLoL alloc] init];
    [gameLoL up];
    
    // 装饰者
    GameDecortor *gameDecortor = [[GameDecortor alloc] init];
    [gameDecortor up];

    // 装饰者分类
    // 调用作弊器
    CheatGameDecotor *cheatGameDecotor = [[CheatGameDecotor alloc] init];
    [cheatGameDecotor cheat];// 通过装饰者实现cheat
    
    // 通过分类来实现
    [gameLoL cheat];// 通过分类方法实现cheat
    gameLoL.coin = 10;// 通过关联对象添加的属性
    NSLog(@"coin %ld", (long)gameLoL.coin);
}

@end

