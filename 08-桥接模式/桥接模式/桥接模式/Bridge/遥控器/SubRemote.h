//
//  SubRemote.h
//  桥接模式
//
//  Created by Alan Ge on 2020/10/2.
//

#import "Remote.h"

@interface SubRemote : Remote

// 方向控制
- (void)up;
- (void)down;
- (void)left;
- (void)right;

@end
