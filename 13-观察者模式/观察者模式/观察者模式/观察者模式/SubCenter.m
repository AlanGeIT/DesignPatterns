//
//  SubCenter.m
//  观察者模式
//
//  Created by Alan Ge on 2020/10/4.
//

//  NSHashTable 就是一个集合，但是它是弱引用的.

#import "SubCenter.h"


static NSMutableDictionary *bookCenter = nil;// 维护用户信息的字典

@implementation SubCenter

+ (void)initialize {
    if (self == [SubCenter class]) {
        bookCenter = [NSMutableDictionary dictionary];
    }
}

// 创建书刊订阅号
+ (void)creatNumber:(NSString *)subNumber {
    NSHashTable *hashTable = [self existNumber:subNumber];
    if (hashTable == nil) {
        hashTable = [NSHashTable weakObjectsHashTable];
        [bookCenter setObject:hashTable forKey:subNumber];
    }
}

// 移除订阅号
+ (void)removeNumber:(NSString *)subNumber {
    NSHashTable *hashTable = [self existNumber:subNumber];
    if (hashTable) {
        [bookCenter removeObjectForKey:subNumber];
    }
}

// 添加用户
+ (void)addUser:(id <SubProtocol>)user wihtNumber:(NSString *)userNumber {
    NSHashTable *hashTable = [self existNumber:userNumber];
    [hashTable addObject:user];
}

// 移除用户
+ (void)removeUser:(id <SubProtocol>)user withNumber:(NSString *)userNumber {
    NSHashTable *hashTable = [self existNumber:userNumber];
    [hashTable removeObject:user];
}

// 发送消息
+ (void)sendMessage:(id)message withSubNumber:(NSString *)SubNumber {
    // 获取订阅号
    NSHashTable *hashTable = [self existNumber:SubNumber];
    if (hashTable) {
        NSEnumerator *enumerato = [hashTable objectEnumerator];
        
        id <SubProtocol> object = nil;
        while (object = [enumerato nextObject]) {
            // 响应协议方法
            if ([object respondsToSelector:@selector(subMessage:withSubNumber:)]) {
                [object subMessage:message withSubNumber:SubNumber];
            }
        }
    }
}

#pragma mark - 私有方法

// 获取订阅号
+ (NSHashTable *)existNumber:(NSString *)subStringNumber {
    return [bookCenter objectForKey:subStringNumber];
}

@end
