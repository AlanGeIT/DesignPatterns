//
//  AbstarctProxy.h
//  NSProxy
//
//  Created by Alan Ge on 2020/10/4.
//

// 抽象类，模拟代理

#import <Foundation/Foundation.h>

@interface AbstarctProxy : NSProxy

// 代理属性
@property (nonatomic, weak) id delegate;

@end
