//
//  BlueViewGenerator.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "BlueViewGenerator.h"
#import "BlueView.h"

@implementation BlueViewGenerator

- (ColorView *)colorViewWithFrame:(CGRect)frame {
    return [[BlueView alloc] initWithFrame:frame];
}

@end
