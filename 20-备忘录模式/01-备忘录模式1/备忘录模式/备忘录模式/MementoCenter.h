//
//  MementoCenter.h
//  备忘录模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"

@interface MementoCenter : NSObject

// 存对象的状态
+ (void)saveMementoObject:(id <MementoProtocol>)object withKey:(NSString *)key;

// 取出对象
+ (id)mementoObjectWithKey:(NSString *)key;

@end
