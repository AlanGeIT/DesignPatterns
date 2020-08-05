//
//  DrawBuilder.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrawView.h"

NS_ASSUME_NONNULL_BEGIN

@interface DrawBuilder : NSObject

- (CGFloat)buildLabel;      //  构建label
- (CGFloat)buildButton;     // 构建按钮
- (CGFloat)buildSizeView;   // 构建蓝色的View

- (DrawView *)loadView;     // 构建结果

@end

NS_ASSUME_NONNULL_END
