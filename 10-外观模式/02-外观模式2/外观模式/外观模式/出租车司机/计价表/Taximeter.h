//
//  Taximeter.h
//  外观模式
//
//  Created by Alan Ge on 2020/10/7.
//

// 子系统 - 计价表

#import <Foundation/Foundation.h>

@interface Taximeter : NSObject

// 开始计费
- (void)start;
// 停止计费
- (void)stop;

@end
