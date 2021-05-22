//
//  Director.h
//  Builder_Mac
//
//  Created by Alan Ge on 2020/10/4.
//

// 组装者(指导者)
// 组装者和构建者 - 聚合关系

#import <Foundation/Foundation.h>
#import "MacBuilder.h"// 构建者 -- 协议

// 组装
@interface Director : NSObject

- (instancetype)initWithBuilder:(id<MacBuilder>)builder;

// 成品的方法
- (void)constructCPU:(NSString *)cpu display:(NSString *)display mainboard:(NSString *)mainboard;

@end
