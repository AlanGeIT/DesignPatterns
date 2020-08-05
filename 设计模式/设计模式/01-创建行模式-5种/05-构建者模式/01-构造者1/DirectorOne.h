//
//  DirectorOne.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 组装者

#import <Foundation/Foundation.h>
#import "BuilderOneProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DirectorOne : NSObject <BuilderOneProtocol>

// 创建传入的实现者
- (instancetype)initWithBuilder:(id<BuilderOneProtocol>)builder;

// 建造
- (NSString *)construct;

@end

NS_ASSUME_NONNULL_END
