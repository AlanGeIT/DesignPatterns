//
//  BlueSubView.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "BlueSubView.h"

@implementation BlueSubView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, 100, 100);
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

@end
