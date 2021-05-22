//
//  DrawView.m
//  Builder_View
//
//  Created by Alan Ge on 2020/10/4.
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
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.buildLabel, 100, 50, 80)];
    label.text = @"TZ";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [self addSubview:label];
    
    // 按钮
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, self.buildButton, 100, 50)];
    [btn setTitle:@"蓝色" forState:UIControlStateNormal];
    btn.titleLabel.backgroundColor = [UIColor redColor];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:btn];
    
    // 添加view
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, self.buildSizeView)];
    subView.backgroundColor = [UIColor blueColor];
    [self addSubview:subView];
    
    UIImage *backgroundImage = [UIImage imageNamed:@"tupian"];
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
    
    [self addSubview:backgroundView];
}

@end
