//
//  RedViewGenerator.m
//  工厂方法
//
//  Created by Alan Ge on 2020/10/2.
//

#import "RedViewGenerator.h"

@implementation RedViewGenerator

- (ColorView *)colorViewWithFrame:(CGRect)frame {
    return [[RedView alloc] initWithFrame:frame];
}

@end
