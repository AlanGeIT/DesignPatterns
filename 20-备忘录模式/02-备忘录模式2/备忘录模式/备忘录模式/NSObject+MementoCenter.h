//
//  NSObject+MementoCenter.h
//  备忘录模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import <Foundation/Foundation.h>

@interface NSObject (MementoCenter)

// 存储状态
- (void)saveStateWithKey:(NSString *)key;

// 恢复状态
- (void)recoverFromStateWithKey:(NSString *)key;

@end
