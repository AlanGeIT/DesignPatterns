//
//  GameDecortor.h
//  装饰模式
//
//  Created by Alan Ge on 2020/10/6.
//

// 装饰者

#import <Foundation/Foundation.h>
#import "GameLoL.h"// 跟装饰者：组合关系

@interface GameDecortor : NSObject

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
