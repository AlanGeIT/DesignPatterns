//
//  DrawBuilder.m
//  Builder_View
//
//  Created by Alan Ge on 2020/10/4.
//

// 构建者

#import "DrawBuilder.h"

@implementation DrawBuilder

//  构建label
- (CGFloat)buildLabel {
    return 0;
}

// 构建按钮
- (CGFloat)buildButton {
    return 0;
}

// 构建蓝色的View
- (CGFloat)buildSizeView {
    return 0;
}

// 构建结果
- (DrawView *)loadView {
    CGFloat drawWidth = 200;
    CGFloat drawHeight = 300;

    DrawView *drawView = [[DrawView alloc] initWithFrame:CGRectMake(0, 0, drawWidth, drawHeight)];

    // 
    drawView.buildLabel = [self buildLabel];
    drawView.buildButton = [self buildButton];
    drawView.buildSizeView = [self buildSizeView];
    
    return drawView;
}

@end
