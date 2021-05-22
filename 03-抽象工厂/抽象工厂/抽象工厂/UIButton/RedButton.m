//
//  RedButton.m
//  抽象工厂
//
//  Created by Alan Ge on 2020/10/3.
//

#import "RedButton.h"

@implementation RedButton

+ (instancetype)buttonWithType:(UIButtonType)buttonType {
    [super buttonWithType:buttonType];
    
    RedButton *btn = [[RedButton alloc] initWithFrame:CGRectMake(0, 0, 300, 30)];
    [btn setTitle:@"红色" forState:UIControlStateNormal];
    btn.titleLabel.backgroundColor = [UIColor redColor];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    return btn;
}

@end
