//
//  Person.m
//  代理模式
//
//  Created by Alan Ge on 2020/10/4.
//

#import "Person.h"

@implementation Person
- (void)run:(NSInteger)speed {
    if (self.delegate && [self.delegate respondsToSelector:@selector(run2:)]) {
        [self.delegate run2:speed];
    }
}
@end
