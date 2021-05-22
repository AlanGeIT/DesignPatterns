//
//  Apple.h
//  简单工厂
//
//  Created by Alan Ge on 2020/10/2.
//

// 继承自父类，扩展了新方法，遵循开闭原则

#import "Fruits.h"

@interface Apple : Fruits

// 私有方法
- (void)freshApple; /**< 新鲜的苹果 */   // 开闭原则

@end
