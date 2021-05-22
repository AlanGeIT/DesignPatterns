//
//  CustomTextField.m
//  策略模式
//
//  Created by Alan Ge on 2020/10/2.
//

// 相当于 Context

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validate {
    
    BOOL result = [self.inputValidate validateInputTextField:self];
    
    if (!result) {
        NSLog(@"---%@",self.inputValidate.attributeInputStr);
    }
    
    return result;
}
@end
