//
//  ObjectAdapter.h
//  AdapterCNY
//
//  Created by Alan Ge on 2020/10/3.
//

// 对象适配器，关联关系

#import <Foundation/Foundation.h>
#import "TargetCNYProtocol.h"
#import "AdapteeUSD.h"// 对象适配器，和AdapteeUSD是关联关系

@interface ObjectAdapter : NSObject <TargetCNYProtocol>

- (instancetype)initWithAdaptee:(AdapteeUSD *)adaptee;

@end
