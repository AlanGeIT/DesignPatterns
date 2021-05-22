//
//  StudentModel.h
//  NSCopyingDemo
//
//  Created by Alan Ge on 2020/10/7.
//

#import "BaseCopyObject.h"

@interface StudentModel : BaseCopyObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;

@end
