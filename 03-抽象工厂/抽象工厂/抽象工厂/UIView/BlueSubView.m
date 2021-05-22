//
//  BlueSubView.m
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

#import "BlueSubView.h"

@implementation BlueSubView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 200, 100, 100);
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

@end
