//
//  CoinGameDecorator.h
//  装饰模式
//
//  Created by Alan Ge on 2020/10/6.
//

// 装饰者子类

#import "GameDecortor.h"

@interface CoinGameDecorator : GameDecortor

@property (nonatomic, assign) NSInteger coin;   /**<  游戏币 */

@end
