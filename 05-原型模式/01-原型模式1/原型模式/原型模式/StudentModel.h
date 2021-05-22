//
//  StudentModel.h
//  原型模式
//
//  Created by Alan Ge on 2020/10/7.
//

#import <Foundation/Foundation.h>
#import "PrototypeCopyProtocol.h"

@interface StudentModel : NSObject <PrototypeCopyProtocol>

@property (nonatomic, copy)   NSString *name;
@property (nonatomic, copy)   NSString *address;
@property (nonatomic, strong) NSNumber *age;
@property (nonatomic, strong) NSNumber *totalScore;

// 复制自己
- (id)clone;

@end
