//
//  CheatGameDecotor.h
//  装饰模式
//
//  Created by Alan Ge on 2020/10/6.
//

// 装饰者子类

#import <Foundation/Foundation.h>
#import "GameDecortor.h"

@interface CheatGameDecotor : GameDecortor

// 作弊器
- (void)cheat;

@end
