//
//  RedViewGenerator.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "RedViewGenerator.h"
#import "RedView.h"

@implementation RedViewGenerator

- (ColorView *)colorViewWithFrame:(CGRect)frame {
    return [[RedView alloc] initWithFrame:frame];
}

@end
