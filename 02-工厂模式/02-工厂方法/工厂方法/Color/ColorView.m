//
//  ColorView.m
//  工厂方法
//
//  Created by Alan Ge on 2020/10/2.
//

#import "ColorView.h"

@implementation ColorView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor grayColor]];
    }
    return self;
}

@end
