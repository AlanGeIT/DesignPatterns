//
//  SubRemote.m
//  桥接模式
//
//  Created by Alan Ge on 2020/10/2.
//

#import "SubRemote.h"

@implementation SubRemote

// 方向控制
- (void)up {
    [self setCommand:@"up"];
}

- (void)down {
    [super setCommand:@"down"];
}

- (void)left {
    [super setCommand:@"left"];
}

- (void)right {
    [super setCommand:@"right"];
}
@end
