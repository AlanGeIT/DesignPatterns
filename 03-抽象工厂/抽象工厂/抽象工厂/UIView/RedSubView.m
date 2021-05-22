//
//  RedSubView.m
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

#import "RedSubView.h"

@implementation RedSubView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, 100, 100);
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

@end
