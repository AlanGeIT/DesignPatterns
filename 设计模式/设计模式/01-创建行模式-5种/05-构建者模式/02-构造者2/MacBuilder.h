//
//  MacBuilder.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 构建者 -- 协议

#import <Foundation/Foundation.h>
#import "MacComputerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MacBuilder <NSObject>

// 构建CPU
- (id<MacBuilder>)buildCPU:(NSString *)cpu;

// 构建显卡
- (id<MacBuilder>)buildDisplay:(NSString *)display;

// 构建主板
- (id<MacBuilder>)buildMainboard:(NSString *)mainboard;

// 构建系统
- (id<MacBuilder>)buildOS:(NSString *)os;

// 构建
- (id<MacComputerProtocol>)build;

@end

NS_ASSUME_NONNULL_END
