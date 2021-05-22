//
//  DarkerCommand.h
//  命令模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "Receiver.h"

@interface DarkerCommand : NSObject <CommandProtocol>

// 绑定接收器
- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(CGFloat)paramter;

@end
