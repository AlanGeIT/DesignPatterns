//
//  MacComputerBuilder.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 生成者

#import <Foundation/Foundation.h>
#import "MacBuilder.h"// 构建者 -- 协议

NS_ASSUME_NONNULL_BEGIN

@interface MacComputerBuilder : NSObject <MacBuilder>

@end

NS_ASSUME_NONNULL_END
