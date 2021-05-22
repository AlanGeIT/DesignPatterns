//
//  Director.h
//  Builder_One
//
//  Created by Alan Ge on 2020/10/4.
//

// 组装者
// 组装者和构建者 - 聚合关系

#import <Foundation/Foundation.h>
#import "Builder.h"// 构建者 - 协议 - 聚合关系

@interface Director : NSObject

// 创建传入的实现者
- (instancetype)initWithBuilder:(id<Builder>)builder;

// 建造
- (NSString *)construct;

@end
