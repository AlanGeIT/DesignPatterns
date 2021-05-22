//
//  DrawBuilder.h
//  Builder_View
//
//  Created by Alan Ge on 2020/10/4.
//

// 构建者

#import <Foundation/Foundation.h>
#import "DrawView.h"

@interface DrawBuilder : NSObject

- (CGFloat)buildLabel;      //  构建label
- (CGFloat)buildButton;     // 构建按钮
- (CGFloat)buildSizeView;   // 构建蓝色的View

- (DrawView *)loadView;     // 构建结果

@end
