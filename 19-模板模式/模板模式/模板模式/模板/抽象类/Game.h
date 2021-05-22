//
//  Game.h
//  模板模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

// 初始化游戏
- (void)initGame;

// 暂停操作
- (void)pause;

// 游戏存储
- (void)gameSave;

// 退出游戏
- (void)exitGame;

// 开始游戏
- (void)startPlay;

@end
