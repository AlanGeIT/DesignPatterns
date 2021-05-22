//
//  GameLoL.h
//  装饰模式
//
//  Created by Alan Ge on 2020/10/6.
//

// 被装饰的类

#import <Foundation/Foundation.h>

@interface GameLoL : NSObject

//  上下左右
- (void)up;
- (void)down;
- (void)left;
- (void)right;

// 选择与开始的操作
- (void)select;
- (void)start;

// 按钮
- (void)commandA;
- (void)commandB;
- (void)commandC;
- (void)commandD;

@end
