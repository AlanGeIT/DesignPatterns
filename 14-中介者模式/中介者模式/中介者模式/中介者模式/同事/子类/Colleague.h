//
//  Colleague.h
//  中介者模式
//
//  Created by Alan Ge on 2020/10/4.
//

#import "AbstrctColleague.h"
#import <UIKit/UIKit.h>

@interface Colleague : AbstrctColleague

@property (nonatomic, assign) CGFloat value;

/// 修改数值
- (void)changeValue:(CGFloat)value;

@end
