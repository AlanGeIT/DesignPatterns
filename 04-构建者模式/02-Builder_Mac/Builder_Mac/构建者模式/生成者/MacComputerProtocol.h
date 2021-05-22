//
//  MacComputerProtocol.h
//  Builder_Mac
//
//  Created by Alan Ge on 2020/10/4.
//

// 生成者协议

#import <Foundation/Foundation.h>

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
