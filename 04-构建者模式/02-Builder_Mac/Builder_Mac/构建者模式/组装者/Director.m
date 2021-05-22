//
//  Director.m
//  Builder_Mac
//
//  Created by Alan Ge on 2020/10/4.
//

// 组装者(指导者)
// 组装者和构建者 - 聚合关系

#import "Director.h"

@interface Director ()
 
@property (nonatomic, strong) id<MacBuilder> builder;

@end

@implementation Director

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
