//
//  Person.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)run:(NSInteger)speed {
    if (self.delegate && [self.delegate respondsToSelector:@selector(run2:)]) {
        [self.delegate run2:speed];
    }
}

@end
