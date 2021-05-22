//
//  GameLoL+Coin.m
//  装饰模式
//
//  Created by Alan Ge on 2020/10/6.
//

// 被装饰的类分类

#import "GameLoL+Coin.h"
#import <objc/runtime.h>

static const NSString *_coinStr = @"_coinStr";

@implementation GameLoL (Coin)

- (void)setCoin:(NSInteger)coin {
    // 利用关联对象动态添加属性
    objc_setAssociatedObject(self, (__bridge const void *)_coinStr, @(coin), OBJC_ASSOCIATION_ASSIGN);
}

- (NSInteger)coin {
    
    NSNumber *number = objc_getAssociatedObject(self, (__bridge const void *)_coinStr);
    
    return number.integerValue;
}

@end


