//
//  MacComputerProtocol.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 生成者协议

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MacComputerProtocol <NSObject>

// 处理器
- (void)cpu:(NSString *)cpu;

// 显卡
- (void)display:(NSString *)display;

// 主板
- (void)mainboard:(NSString *)mainboard;

// 系统
- (void)os;

@end

NS_ASSUME_NONNULL_END
