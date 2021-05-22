//
//  ColorViewGenerator.h
//  工厂方法
//
//  Created by Alan Ge on 2020/10/2.
//

// Generator相当于是一个工厂

#import <Foundation/Foundation.h>
#import "ColorView.h"

@interface ColorViewGenerator : NSObject

- (ColorView *)colorViewWithFrame:(CGRect)frame;

@end
