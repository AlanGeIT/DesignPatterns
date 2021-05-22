//
//  ColorViewGenerator.m
//  工厂方法
//
//  Created by Alan Ge on 2020/10/2.
//

#import "ColorViewGenerator.h"

@implementation ColorViewGenerator

- (ColorView *)colorViewWithFrame:(CGRect)frame {
    return [[ColorView alloc] initWithFrame:frame];
}

@end
