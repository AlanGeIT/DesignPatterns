//
//  Apple.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 继承自父类，扩展了新方法，遵循开闭原则

#import "Fruits.h"

NS_ASSUME_NONNULL_BEGIN

@interface Apple : Fruits

// 私有方法
- (void)freshApple; /**< 新鲜的苹果 */   // 开闭原则

@end

NS_ASSUME_NONNULL_END
