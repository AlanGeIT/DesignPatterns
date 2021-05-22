//
//  ViewController.m
//  模板模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "ViewController.h"
#import "Football.h"
#import "Baskeball.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 足球游戏的创建
    Game *footballGame = [Football new];
    [footballGame initGame];
    [footballGame startPlay];
    [footballGame gameSave];
    [footballGame pause];
    [footballGame exitGame];
    
    // 篮球游戏的创建
    Game *baskeballGame = [Baskeball new];
    [baskeballGame initGame];
    [baskeballGame startPlay];
    [baskeballGame gameSave];
    [baskeballGame pause];
    [baskeballGame exitGame];
}

@end
