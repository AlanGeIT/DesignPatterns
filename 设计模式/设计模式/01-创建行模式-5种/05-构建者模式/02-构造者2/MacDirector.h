//
//  MacDirector.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 组装者(指导者)

#import <Foundation/Foundation.h>
#import "MacBuilder.h"// 构建者 -- 协议

NS_ASSUME_NONNULL_BEGIN

// 组装
@interface MacDirector : NSObject

- (instancetype)initWithBuilder:(id<MacBuilder>)builder;

// 成品的方法
- (void)constructCPU:(NSString *)cpu display:(NSString *)display mainboard:(NSString *)mainboard;

@end

NS_ASSUME_NONNULL_END
