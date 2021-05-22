//
//  Apple.m
//  备忘录模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import "Apple.h"

@implementation Apple

- (id)currentState {
    
    return @{ @"name":self.name,
              @"age" : self.age
              };
}

- (void)recoverFromState:(id)state {
    NSDictionary *data = state;
    self.name = data[@"name"];
    self.age = data[@"age"];
}

@end

