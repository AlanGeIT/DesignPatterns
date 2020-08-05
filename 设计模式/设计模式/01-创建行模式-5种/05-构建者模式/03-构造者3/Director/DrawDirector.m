//
//  DrawDirector.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "DrawDirector.h"

@implementation DrawDirector

+ (DrawView *)creatView:(DrawBuilder *)builder {
    DrawView *drawView = [builder loadView];
    return drawView;
}


@end
