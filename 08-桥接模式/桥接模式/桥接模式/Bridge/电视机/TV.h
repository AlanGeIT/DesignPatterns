//
//  TV.h
//  桥接模式
//
//  Created by Alan Ge on 2020/10/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TV : NSObject

// 电视机提供给外界调用的一个方法
- (void)loadCommand:(NSString *)command;

@end

NS_ASSUME_NONNULL_END
