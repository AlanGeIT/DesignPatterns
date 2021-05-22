//
//  TargetCNYProtocol.h
//  AdapterCNY
//
//  Created by Alan Ge on 2020/10/3.
//

#import <Foundation/Foundation.h>

// 目标接口
@protocol TargetCNYProtocol <NSObject>

// 转化后的人民币
- (float)getCNY;

@end
