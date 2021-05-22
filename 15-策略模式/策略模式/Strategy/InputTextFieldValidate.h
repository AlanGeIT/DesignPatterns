//
//  InputTextFieldValidate.h
//  策略模式
//
//  Created by Alan Ge on 2020/10/2.
//

// 抽象类  -- 相当于Strategy

#import <UIKit/UIKit.h>

@interface InputTextFieldValidate : NSObject

// 输出的属性字符串
@property (nonatomic, copy) NSString *attributeInputStr; /**< 属性字符串 */

// 策略输入 YES:表示测试通过，NO:表示测试不通过
- (BOOL)validateInputTextField:(UITextField *)textField;

@end
