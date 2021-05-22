//
//  CarDriver.m
//  外观模式
//
//  Created by Alan Ge on 2020/10/7.
//

// 外观模式

// 出租车司机

#import "CarDriver.h"
#import "Car.h"
#import "Taximeter.h"

@implementation CarDriver

+ (void)driveToLocation:(NSString *)location {
    
    // 启动计价器
    Taximeter *taximeter = [[Taximeter alloc] init];
    [taximeter start];
    
    // 驾驶汽车
    Car *car = [[Car alloc] init];
    [car releaseBrakes];    // 松刹车
    [car pressAccelerator]; // 踩油门
    
    // 到达位置的操作
    [car releaseAccelerator];// 松油门
    [car pressBrakes];// 踩刹车
    [taximeter stop];// 停止计费
    
    NSLog(@"%@已经到达",location);
}

@end

