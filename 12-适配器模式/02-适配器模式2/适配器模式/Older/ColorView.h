//
//  ColorView.h
//  适配器模式
//
//  Created by Alan Ge on 2020/10/3.
//

//  1.目标    2.适配者   3.适配器

#import <UIKit/UIKit.h>
#import "TargeyProtocol.h"

@interface ColorView : UIView

// 加载数据, 已经实现了TargeyProtocol里面的要求
- (void)loadModel:(id <TargeyProtocol>)model;

@end
