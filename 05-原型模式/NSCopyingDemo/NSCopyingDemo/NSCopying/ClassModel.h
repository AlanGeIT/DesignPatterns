//
//  ClassModel.h
//  NSCopyingDemo
//
//  Created by Alan Ge on 2020/10/7.
//

#import "BaseCopyObject.h"

@interface ClassModel : BaseCopyObject

@property (nonatomic, copy) NSString *className;
@property (nonatomic, copy) NSArray  *students;

@end
