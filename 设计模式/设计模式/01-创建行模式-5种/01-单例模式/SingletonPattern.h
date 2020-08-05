//
//  SingletonPattern.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingletonPattern : NSObject

+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
