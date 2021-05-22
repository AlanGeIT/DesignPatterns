//
//  BaseCopyObject.m
//  NSCopyingDemo
//
//  Created by Alan Ge on 2020/10/7.
//

#import "BaseCopyObject.h"

@implementation BaseCopyObject

- (id)copyWithZone:(NSZone *)zone {
    
    BaseCopyObject *copyObject = [[self class] allocWithZone:zone];
    // 赋值操作
    [self copyOperationWithObject:copyObject];
    
    return copyObject;
}

- (void)copyOperationWithObject:(id)object {
    
}

@end
