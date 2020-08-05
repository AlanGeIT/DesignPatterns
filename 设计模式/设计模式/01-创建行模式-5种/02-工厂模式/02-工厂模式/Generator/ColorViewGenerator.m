//
//  ColorViewGenerator.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "ColorViewGenerator.h"

@implementation ColorViewGenerator

- (ColorView *)colorViewWithFrame:(CGRect)frame {
    return [[ColorView alloc] initWithFrame:frame];
}

@end
