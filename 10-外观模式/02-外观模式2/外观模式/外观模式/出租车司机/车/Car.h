//
//  Car.h
//  外观模式
//
//  Created by Alan Ge on 2020/10/7.
//

// 子系统 - 车

#import <Foundation/Foundation.h>

@interface Car : NSObject

/// 松刹车
- (void)releaseBrakes;
/// 踩刹车
- (void)pressBrakes;
/// 踩油门
- (void)pressAccelerator;
/// 松油门
- (void)releaseAccelerator;

@end
