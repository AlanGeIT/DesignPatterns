//
//  Remote.m
//  桥接模式
//
//  Created by Alan Ge on 2020/10/2.
//

#import "Remote.h"

@implementation Remote

// 实现桥接：将遥控器和电视进行桥接：在遥控器的setCommand里调用电视机的loadCommand方法
- (void)setCommand:(NSString *)commmand {
    [self.tv loadCommand:commmand];
}

@end
