//
//  DrawView.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame: frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

// 使用drawRect,可以在控制器中设置值给view.
- (void)drawRect:(CGRect)rect {
    
    [self setBackgroundColor:[UIColor redColor]];
    // label
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.buildLabel, 40, 50, 30)];
    label.text = @"GE";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [self addSubview:label];
    
    // 按钮
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, self.buildButton, 50, 30)];
    [btn setTitle:@"蓝色" forState:UIControlStateNormal];
    btn.titleLabel.backgroundColor = [UIColor redColor];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:btn];
    
    // 添加view
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 50, self.buildSizeView)];
    subView.backgroundColor = [UIColor blueColor];
    [self addSubview:subView];
    
    UIImage *backgroundImage = [UIImage imageNamed:@"hua1"];
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
    backgroundView.frame = CGRectMake(0, 180, 80, 80);

    [self addSubview:backgroundView];
}

@end
