//
//  BuilderOneProtocol.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 构建者 - 协议

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BuilderOneProtocol <NSObject>

// 构建部分
- (NSString *)builderPart;

@end

NS_ASSUME_NONNULL_END
