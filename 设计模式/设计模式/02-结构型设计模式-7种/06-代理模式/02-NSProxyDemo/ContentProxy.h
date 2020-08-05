//
//  ContentProxy.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/5.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "AbstarctProxy.h"
#import "MessagesProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContentProxy : AbstarctProxy <MessagesProtocol>

@end

NS_ASSUME_NONNULL_END
