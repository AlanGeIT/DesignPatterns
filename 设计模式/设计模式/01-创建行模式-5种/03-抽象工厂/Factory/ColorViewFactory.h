//
//  ColorViewFactory.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorViewFactory : NSObject

// 生产红色的View
+ (UIView *)colorView;

// 生产蓝色的UIButton
+ (UIButton *)buttonView;

@end

NS_ASSUME_NONNULL_END
