//
//  FruitsFactory.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruits.h"
#import "Apple.h"
#import "Orange.h"
#import "Banana.h"

NS_ASSUME_NONNULL_BEGIN

// 由于外面要传一个类型进来，所以要加一个枚举才行
typedef NS_ENUM(NSInteger) {
    kApple,
    kOrange,
    kBanana
} FruitsType;

@interface FruitsFactory : NSObject

// 创造水果的工厂
+ (Fruits *)fruitsFactory:(FruitsType)type;

@end

NS_ASSUME_NONNULL_END
