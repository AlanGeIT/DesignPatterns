//
//  RedViewFactory.m
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

#import "RedViewFactory.h"
#import "RedButton.h"
#import "RedSubView.h"

@implementation RedViewFactory

+ (UIView *)colorView {
    return [[RedSubView alloc] init];
}

+ (UIButton *)buttonView {
     return [RedButton buttonWithType:UIButtonTypeCustom];
}

@end
