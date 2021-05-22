//
//  AdapterCNY.m
//  AdapterCNY
//
//  Created by Alan Ge on 2020/10/3.
//

#import "AdapterCNY.h"

// 适配器
@implementation AdapterCNY

- (float)getCNY {
    return [self getUSD] * 6.61f;
}

@end
