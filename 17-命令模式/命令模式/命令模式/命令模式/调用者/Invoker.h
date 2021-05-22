//
//  Invoker.h
//  命令模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject

+ (instancetype)sharedInstance;

// 回退指令
- (void)goBack;

// 添加操作指令
- (void)addAndExcute:(id <CommandProtocol>)command;

@end
