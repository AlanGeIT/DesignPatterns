//
//  File.m
//  文件组合
//
//  Created by Alan Ge on 2020/10/6.
//

#import "File.h"

@implementation File

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.childFiles = [NSMutableArray array];
    }
    return self;
}

// 添加文件到集合
- (void)addFile:(File *)file {
    [self.childFiles addObject:file];
}

// 初始化的方法
+ (instancetype)fileWithFileType:(EFile)fileType fileName:(NSString *)name {
    File *file = [[self alloc] init];
    file.fileType = fileType;
    file.name = name;
    
    return file;
}

@end
