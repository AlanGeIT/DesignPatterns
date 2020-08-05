//
//  DrawBuilderVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "DrawBuilderVC.h"
#import "DrawSubBuilderOne.h"
#import "DrawSubBuilderTwo.h"
#import "DrawDirector.h"

@interface DrawBuilderVC ()

@property (nonatomic, strong) DrawBuilder   *builder1;
@property (nonatomic, strong) DrawView      *drawView1;

@property (nonatomic, strong) DrawBuilder   *builder2;
@property (nonatomic, strong) DrawView      *drawView2;

@end

@implementation DrawBuilderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)builderOneClick:(id)sender {
    // 创建者
    DrawBuilder *builder = [[DrawSubBuilderOne alloc] init];

    // 组装
    DrawView *drawView = [DrawDirector creatView:builder];

    drawView.center = self.view.center;
    [self.view addSubview:drawView];
}
- (IBAction)builderTwoClick:(id)sender {
    // 创建者
    DrawBuilder *builder = [[DrawSubBuilderTwo alloc] init];

    // 组装
    DrawView *drawView = [DrawDirector creatView:builder];

    drawView.center = self.view.center;
    [self.view addSubview:drawView];
}

//- (DrawBuilder *)DrawBuilder {
//    if (_builder1 != nil) {
//        return _builder1;
//    }
//    
//    _builder1 = [[DrawBuilder alloc] init];
//    
//    return _builder1;
//}
//
//- (DrawView *)drawView1 {
//    if (_drawView1 != nil) {
//        return _drawView1;
//    }
//    
//    _drawView1 = [[DrawView alloc] init];
//    
//    return _drawView1;
//}
//
//- (DrawBuilder *)builder2 {
//    if (_builder2 != nil) {
//        return _builder2;
//    }
//    
//    _builder2 = [[DrawBuilder alloc] init];
//    
//    return _builder2;
//}
//
//- (DrawView *)drawView2 {
//    if (_drawView2 != nil) {
//        return _drawView2;
//    }
//    
//    _drawView2 = [[DrawView alloc] init];
//    
//    return _drawView2;
//}

@end
