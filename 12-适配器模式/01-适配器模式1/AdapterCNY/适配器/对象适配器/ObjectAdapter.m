//
//  ObjectAdapter.m
//  AdapterCNY
//
//  Created by Alan Ge on 2020/10/3.
//

#import "ObjectAdapter.h"

@interface ObjectAdapter ()

// 对象适配器，和AdapteeUSD是关联关系
@property (nonatomic, strong) AdapteeUSD *adapteeUSD;

@end

@implementation ObjectAdapter

- (instancetype)initWithAdaptee:(AdapteeUSD *)adaptee {
    self = [super init];
    if (self) {
        _adapteeUSD = adaptee;
    }
    return self;
}

- (float)getCNY {
    return [self.adapteeUSD getUSD] * 6.61f;
}

@end
