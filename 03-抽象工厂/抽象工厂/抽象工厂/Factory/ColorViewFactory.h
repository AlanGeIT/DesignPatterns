//
//  ColorViewFactory.h
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

#import <UIKit/UIKit.h>

@interface ColorViewFactory : NSObject

// 生产颜色的View
+ (UIView *)colorView;

// 生产UIButton
+ (UIButton *)buttonView;

@end

