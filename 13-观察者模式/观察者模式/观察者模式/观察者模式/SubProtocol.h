//
//  SubProtocol.h
//  观察者模式
//
//  Created by Alan Ge on 2020/10/4.
//

// 协议

#import <Foundation/Foundation.h>

@protocol SubProtocol <NSObject>

// 用户信息和从某一个刊物接收的信息
- (void)subMessage:(id)message withSubNumber:(NSString *)withSubNumber;

@end
