//
//  Director.m
//  Builder_One
//
//  Created by Alan Ge on 2020/10/4.
//

// 组装者
// 组装者和构建者 - 聚合关系

#import "Director.h"

@interface Director ()

@property (nonatomic, copy) id<Builder> builder;

@end

@implementation Director

- (instancetype)initWithBuilder:(id<Builder>)builder {
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}

// 建造
- (NSString *)construct {
    // 创建部件
    return [self.builder builderPart];
}
@end

