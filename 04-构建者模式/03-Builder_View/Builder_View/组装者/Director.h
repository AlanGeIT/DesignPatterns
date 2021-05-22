//
//  Director.h
//  Builder_View
//
//  Created by Alan Ge on 2020/10/4.
//

#import <Foundation/Foundation.h>
#import "DrawBuilder.h"

@interface Director : NSObject

+ (DrawView *)creatView:(DrawBuilder *)builder;

@end
