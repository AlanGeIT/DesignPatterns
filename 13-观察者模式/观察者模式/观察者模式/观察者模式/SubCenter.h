//
//  SubCenter.h
//  观察者模式
//
//  Created by Alan Ge on 2020/10/4.
//

// 书刊机构：被观察者

#import <Foundation/Foundation.h>
#import "SubProtocol.h"

@interface SubCenter : NSObject

// 创建书刊订阅号
+ (void)creatNumber:(NSString *)subNumber;

// 移除订阅号
+ (void)removeNumber:(NSString *)subNumber;

// 添加用户
+ (void)addUser:(id <SubProtocol>)user wihtNumber:(NSString *)userNumber;

// 移除用户
+ (void)removeUser:(id <SubProtocol>)user withNumber:(NSString *)userNumber;

// 发送消息
+ (void)sendMessage:(id)message withSubNumber:(NSString *)SubNumber;

@end
