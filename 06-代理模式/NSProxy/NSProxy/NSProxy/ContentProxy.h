//
//  ContentProxy.h
//  NSProxy
//
//  Created by Alan Ge on 2020/10/4.
//

// 实际代理

#import "AbstarctProxy.h"
#import "MessagesProtocol.h"

@interface ContentProxy : AbstarctProxy <MessagesProtocol>

@end
