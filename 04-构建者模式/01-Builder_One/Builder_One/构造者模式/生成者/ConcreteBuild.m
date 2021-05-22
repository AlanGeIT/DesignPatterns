//
//  ConcreteBuild.m
//  Builder_One
//
//  Created by Alan Ge on 2020/10/4.
//

// 生成者
// 生成者和构建者 - 实现关系

#import "ConcreteBuild.h"

@implementation ConcreteBuild

#pragma mark - Builder
- (NSString *)builderPart {
    return @"实现协议, 返回产品";
}

@end
