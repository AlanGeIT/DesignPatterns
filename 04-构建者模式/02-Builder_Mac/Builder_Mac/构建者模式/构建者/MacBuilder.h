//
//  MacBuilder.h
//  Builder_Mac
//
//  Created by Alan Ge on 2020/10/4.
//

// 构建者 -- 协议

#import <Foundation/Foundation.h>
#import "MacComputerProtocol.h"

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
