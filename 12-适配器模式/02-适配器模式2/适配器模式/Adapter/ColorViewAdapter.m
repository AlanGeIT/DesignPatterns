//
//  ColorViewAdapter.m
//  适配器模式
//
//  Created by Alan Ge on 2020/10/3.
//

#import "ColorViewAdapter.h"

@implementation ColorViewAdapter

- (instancetype)initWithModel:(id)model {
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

- (UIColor *)smallViewColor {
    return nil;
}

- (NSString *)userName {
    return nil;
}

- (NSString *)password {
    return nil;
}

@end
