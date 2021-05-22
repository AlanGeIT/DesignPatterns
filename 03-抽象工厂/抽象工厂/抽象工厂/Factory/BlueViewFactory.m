//
//  BlueViewFactory.m
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

#import "BlueViewFactory.h"
#import "BlueButton.h"
#import "BlueSubView.h"

@implementation BlueViewFactory

+ (UIView *)colorView {
    return [[BlueSubView alloc] init];
}

+ (UIButton *)buttonView {
    return [BlueButton buttonWithType:UIButtonTypeCustom];
}

@end
