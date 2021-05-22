//
//  Colleague.m
//  中介者模式
//
//  Created by Alan Ge on 2020/10/4.
//

#import "Colleague.h"

@implementation Colleague

/// 修改数值
- (void)changeValue:(CGFloat)value {
    self.value = value;
    if (self.delegate && [self.delegate respondsToSelector:@selector(colleagueEvent:)]) {
        
        [self.delegate colleagueEvent:self];
    }
}

@end
