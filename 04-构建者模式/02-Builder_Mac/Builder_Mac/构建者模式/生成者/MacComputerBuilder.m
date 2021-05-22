//
//  MacComputerBuilder.m
//  Builder_Mac
//
//  Created by Alan Ge on 2020/10/4.
//

// 生成者
// 生成者和构建者 - 实现关系

#import "MacComputerBuilder.h"
#import "MACComputer.h" // 扩展生成者来处理最后的结果

@interface MacComputerBuilder ()

// 只要符合MacComputerProtocol协议的类，都可以传过来，这样就与MACComputer解耦了
@property (nonatomic, strong) id<MacComputerProtocol> computer;

@end

// 类似的调用方式, 就是典型的构建者调用模式
@implementation MacComputerBuilder

- (instancetype)init
{
    self = [super init];
    if (self) {
        _computer = [[MACComputer alloc] init];
    }
    return self;
}

// 构建CPU
- (id<MacBuilder>)buildCPU:(NSString *)cpu {
    [_computer cpu:cpu];
    return self;
}

// 构建显卡
- (id<MacBuilder>)buildDisplay:(NSString *)display {
    [_computer display:display];
    return self;
}

// 构建主板
- (id<MacBuilder>)buildMainboard:(NSString *)mainboard {
    [_computer mainboard:mainboard];
    return self;
}

// 构建系统
- (id<MacBuilder>)buildOS:(NSString *)os {
    [_computer os];
    return self;
}

// 构建
- (id<MacComputerProtocol>)build {
    NSLog(@"构建了一台苹果电脑");
    //这种中间其实有很多逻辑需要处理，此次省略500行代码
    
    return _computer;
}

@end
