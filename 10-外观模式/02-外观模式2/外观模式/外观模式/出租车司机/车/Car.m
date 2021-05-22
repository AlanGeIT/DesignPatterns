//
//  Car.m
//  外观模式
//
//  Created by Alan Ge on 2020/10/7.
//

// 子系统 - 车

#import "Car.h"

@implementation Car

- (void)releaseBrakes {
    NSLog(@"松刹车");
}

- (void)pressBrakes {
    NSLog(@"踩刹车");
}

- (void)pressAccelerator {
    NSLog(@"踩油门");
}

- (void)releaseAccelerator {
    NSLog(@"松油门");
}

@end
