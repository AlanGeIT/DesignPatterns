//
//  StudentModel.m
//  NSCopyingDemo
//
//  Created by Alan Ge on 2020/10/7.
//

#import "StudentModel.h"

@implementation StudentModel

- (void)copyOperationWithObject:(StudentModel *)object {
    object.name = self.name;
    object.age = self.age;
}

@end

