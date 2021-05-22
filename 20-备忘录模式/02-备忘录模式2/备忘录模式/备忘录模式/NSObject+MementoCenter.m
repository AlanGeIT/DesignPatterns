//
//  NSObject+MementoCenter.m
//  备忘录模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import "NSObject+MementoCenter.h"
#import "MementoCenter.h"

@implementation NSObject (MementoCenter)

// 存储状态
- (void)saveStateWithKey:(NSString *)key {
    id <MementoProtocol> obj = (id <MementoProtocol>)self;
    
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MementoCenter saveMementoObject:obj withKey:key];
    }
}

// 恢复状态
- (void)recoverFromStateWithKey:(NSString *)key {
    id state = [MementoCenter mementoObjectWithKey:key];
    
    id <MementoProtocol> obj = (id <MementoProtocol>)self;
    
    if ([obj respondsToSelector:@selector(recoverFromStateWithKey:)]) {
        [obj recoverFromState:state];
    }
}

@end
