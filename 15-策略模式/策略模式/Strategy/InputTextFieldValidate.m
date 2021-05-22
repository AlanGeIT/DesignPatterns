//
//  InputTextFieldValidate.m
//  策略模式
//
//  Created by Alan Ge on 2020/10/2.
//

// 抽象类  -- 相当于Strategy

#import "InputTextFieldValidate.h"

@implementation InputTextFieldValidate

- (BOOL)validateInputTextField:(UITextField *)textField {
    return NO;
}

@end
