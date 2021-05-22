//
//  BlueButton.m
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

#import "BlueButton.h"

@implementation BlueButton

+ (instancetype)buttonWithType:(UIButtonType)buttonType {
    [super buttonWithType:buttonType];
    
    BlueButton *btn = [[BlueButton alloc] initWithFrame:CGRectMake(0, 200, 300, 30)];
    [btn setTitle:@"蓝色" forState:UIControlStateNormal];
    btn.titleLabel.backgroundColor = [UIColor blueColor];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    return btn;
}

@end
