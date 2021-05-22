//
//  AdapteeUSD.m
//  AdapterCNY
//
//  Created by Alan Ge on 2020/10/3.
//

//  思路: 美元适配者已经准备好, 对人民币进行适配。准备目标接口
//  目标接口准备好后，新建一个适配器去进行实现

#import "AdapteeUSD.h"

@implementation AdapteeUSD

// 美元
- (float)getUSD {
    return 100;
}

@end
