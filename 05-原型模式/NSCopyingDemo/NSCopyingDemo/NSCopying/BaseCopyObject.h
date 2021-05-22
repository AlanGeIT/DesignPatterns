//
//  BaseCopyObject.h
//  NSCopyingDemo
//
//  Created by Alan Ge on 2020/10/7.
//

#import <Foundation/Foundation.h>

@interface BaseCopyObject : NSObject <NSCopying>

// 子类不要重载
- (id)copyWithZone:(NSZone *)zone;

// 子类去实现
- (void)copyOperationWithObject:(id)object;

@end
