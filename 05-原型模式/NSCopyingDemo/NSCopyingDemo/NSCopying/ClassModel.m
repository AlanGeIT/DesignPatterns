//
//  ClassModel.m
//  NSCopyingDemo
//
//  Created by Alan Ge on 2020/10/7.
//

#import "ClassModel.h"

@implementation ClassModel
- (void)copyOperationWithObject:(ClassModel *)object {
    object.className = self.className;
//    object.students = self.students;// 浅拷贝
    
    // 深拷贝
    object.students = [[NSArray alloc] initWithArray:self.students copyItems:YES];
}

@end
