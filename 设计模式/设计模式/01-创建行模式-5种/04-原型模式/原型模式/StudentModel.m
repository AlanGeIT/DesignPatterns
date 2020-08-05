//
//  StudentModel.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "StudentModel.h"

@implementation StudentModel

- (id)clone {
    StudentModel *student = [[[self class] alloc] init];
    student.name = self.name;
    student.age = self.age;
    student.address = self.address;
    student.totalScore = self.totalScore;
    
    return student;
}

@end
