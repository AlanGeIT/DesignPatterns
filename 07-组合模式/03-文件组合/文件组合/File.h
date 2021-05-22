//
//  File.h
//  文件组合
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>

typedef enum :NSUInteger {
    kFile,      // 文件
    kFolder,    // 文件夹
}EFile;

@interface File : NSObject

@property (nonatomic, copy)   NSString                  *name;      // 文件夹或文件名, 根据枚举来区分
@property (nonatomic, assign) EFile                     fileType;   // 文件类型
@property (nonatomic, strong) NSMutableArray<File *>    *childFiles;// 集合

// 添加文件到集合
- (void)addFile:(File *)file;

// 初始化的方法
+ (instancetype)fileWithFileType:(EFile)fileType fileName:(NSString *)name;

@end
