//
//  AdapterCNY.h
//  AdapterCNY
//
//  Created by Alan Ge on 2020/10/3.
//

#import "AdapteeUSD.h"
#import "TargetCNYProtocol.h"// 实现关系：实现协议

// 类适配器：和AdapteeUSD是继承关系
@interface AdapterCNY : AdapteeUSD <TargetCNYProtocol>

@end
