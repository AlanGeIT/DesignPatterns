//
//  CommandProtocol.h
//  命令模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>

@protocol CommandProtocol <NSObject>

// 执行命令
- (void)excute;

// 撤销命令
- (void)backExcute;

@end
