//
//  RedSubView.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "RedSubView.h"

@implementation RedSubView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 80, 100, 100);
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

@end
