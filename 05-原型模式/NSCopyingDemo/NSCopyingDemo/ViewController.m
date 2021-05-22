//
//  ViewController.m
//  NSCopyingDemo
//
//  Created by Alan Ge on 2020/10/7.
//

#import "ViewController.h"
#import "StudentModel.h"
#import "ClassModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    StudentModel *stu1 = [StudentModel new];
    stu1.name = @"张三";
    
    StudentModel *stu2 = stu1.copy;
    stu2.name = @"李四";
    
    NSLog(@"stu2.name = %@",stu2.name);
    
    NSLog(@"stu1 = %@ stu2 = %@", stu1, stu2);
    
    // classModel
    ClassModel *class1 = [[ClassModel alloc] init];
    class1.className = @"ban ji 1";
    class1.students = @[stu1, stu2];
    
    ClassModel *class2 = class1.copy;
    NSLog(@"class1 = %@ ----%@", class1, class2);
    
    NSLog(@"%@", class1.students);
    NSLog(@"%@", class2.students);
}

@end
