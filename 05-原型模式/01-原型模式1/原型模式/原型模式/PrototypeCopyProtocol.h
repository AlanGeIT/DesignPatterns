//
//  PrototypeCopyProtocol.h
//  原型模式
//
//  Created by Alan Ge on 2020/10/7.
//

#import <Foundation/Foundation.h>

@protocol PrototypeCopyProtocol <NSObject>

// 复制自己
- (id)clone;

@end
