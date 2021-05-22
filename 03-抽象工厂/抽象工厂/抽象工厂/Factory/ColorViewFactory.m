//
//  ColorViewFactory.m
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

#import "ColorViewFactory.h"

@implementation ColorViewFactory

// 生产颜色的View
+ (UIView *)colorView {
    return  nil;
}

// 生产UIButton
+ (UIButton *)buttonView {
    return nil;
}

@end
