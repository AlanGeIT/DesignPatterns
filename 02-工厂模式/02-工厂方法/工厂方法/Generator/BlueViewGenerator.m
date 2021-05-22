//
//  BlueViewGenerator.m
//  工厂方法
//
//  Created by Alan Ge on 2020/10/2.
//

#import "BlueViewGenerator.h"

@implementation BlueViewGenerator

- (ColorView *)colorViewWithFrame:(CGRect)frame {
    return [[BlueView alloc] initWithFrame:frame];
}

@end
