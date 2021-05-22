//
//  CustomTextField.h
//  策略模式
//
//  Created by Alan Ge on 2020/10/2.
//

// 相当于 Context

#import <UIKit/UIKit.h>
#import "InputTextFieldValidate.h" // 抽象类

@interface CustomTextField : UITextField

// 抽象的策略
@property (nonatomic, strong) InputTextFieldValidate *inputValidate;    // CustomTextField跟InputTextFieldValidate是聚合关系

// 验证是否符合要求
- (BOOL)validate;

@end
