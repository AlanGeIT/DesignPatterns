//
//  DirectorOne.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 组装者

#import "DirectorOne.h"

@interface DirectorOne ()

@property (nonatomic, copy) id<BuilderOneProtocol> builder;

@end

@implementation DirectorOne

- (instancetype)initWithBuilder:(id<BuilderOneProtocol>)builder {
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
