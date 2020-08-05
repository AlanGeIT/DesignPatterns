//
//  AbstarctProxy.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/5.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstarctProxy : NSProxy

// 代理属性
@property (nonatomic, weak) id delegate;

@end

NS_ASSUME_NONNULL_END
