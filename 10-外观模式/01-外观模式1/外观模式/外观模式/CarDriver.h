//
//  CarDriver.h
//  外观模式
//
//  Created by Alan Ge on 2020/10/7.
//

// 外观模式

// 出租车司机

#import <Foundation/Foundation.h>

@interface CarDriver : NSObject

// 到达指定的位置
+ (void)driveToLocation:(NSString *)location;

@end
