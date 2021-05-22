//
//  ViewController.m
//  Builder_View
//
//  Created by Alan Ge on 2020/10/4.
//

#import "ViewController.h"
#import "DrawSubBuilderOne.h"
#import "DrawSubBuilderTwo.h"
#import "Director.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)btnClick:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    // 创建者
    DrawBuilder *builder = nil;
    
    if (sender.selected) {
        builder = [[DrawSubBuilderOne alloc] init];
    } else {
        builder = [[DrawSubBuilderTwo alloc] init];
    }

    // 组装
    DrawView *drawView = [Director creatView:builder];
    
    drawView.center = self.view.center;
    [self.view addSubview:drawView];
}

@end

