//
//  CoachDriver.m
//  外观模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import "CoachDriver.h"
#import "Car.h"
#import "Teaching.h"

@implementation CoachDriver

+ (void)driveToLocation:(NSString *)location {
    [self teachDriving];
    NSLog(@"%@到达了", location);
}

+ (void)teachDriving {
    
    // 驾驶汽车
    Car *car = [[Car alloc] init];
    [car releaseBrakes];    // 松刹车
    [car pressAccelerator]; // 踩油门
    
    // 到达位置的操作
    [car releaseAccelerator];
    [car pressBrakes];

    // 教倒车
    Teaching *teach = [[Teaching alloc] init];
    [teach reversing];

}

@end
