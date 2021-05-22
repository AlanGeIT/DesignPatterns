//
//  MessagesProtocol.h
//  NSProxy
//
//  Created by Alan Ge on 2020/10/4.
//

// 代理的协议

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MessagesProtocol <NSObject>

- (void)helloWorld;
- (void)notImplement;// 没有实现的方法

@end

NS_ASSUME_NONNULL_END
