//
//  RedViewFactory.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
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
