//
//  MacDirector.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

// 组装者(指导者)

#import "MacDirector.h"

@interface MacDirector ()

@property (nonatomic, strong) id<MacBuilder> builder;

@end

@implementation MacDirector

- (instancetype)initWithBuilder:(id<MacBuilder>)builder {
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}

// 成品的方法
- (void)constructCPU:(NSString *)cpu display:(NSString *)display mainboard:(NSString *)mainboard {
    
    [[[[_builder buildCPU:cpu] buildDisplay:display] buildMainboard:mainboard] build];
}

@end
