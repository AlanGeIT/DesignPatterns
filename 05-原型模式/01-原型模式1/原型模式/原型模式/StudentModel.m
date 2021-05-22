//
//  StudentModel.m
//  原型模式
//
//  Created by Alan Ge on 2020/10/7.
//

#import "StudentModel.h"

@implementation StudentModel

// 复制自己
- (id)clone {
    StudentModel *student = [[[self class] alloc] init];
    student.name = self.name;
    student.age = self.age;
    student.address = self.address;
    student.totalScore = self.totalScore;
    
    return student;
}

@end
