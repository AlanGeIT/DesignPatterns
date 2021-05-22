//
//  FruitsFactory.h
//  简单工厂
//
//  Created by Alan Ge on 2020/10/2.
//

#import <Foundation/Foundation.h>
#import "Fruits.h"
#import "Apple.h"
#import "Orange.h"
#import "Banana.h"

// 由于外面要传一个类型进来,所以要加一个枚举才行
typedef NS_ENUM(NSInteger) {
    kApple,
    kOrange,
    kBanana
} FruitsType;

@interface FruitsFactory : NSObject

// 创造水果的工厂
+ (Fruits *)fruitsFactory:(FruitsType)type;

@end
