//
//  Director.m
//  Builder_View
//
//  Created by Alan Ge on 2020/10/4.
//

#import "Director.h"

@implementation Director

+ (DrawView *)creatView:(DrawBuilder *)builder {
    DrawView *drawView = [builder loadView];
    return drawView;
}

@end
