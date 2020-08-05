//
//  StudentModel.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrototypeCopyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface StudentModel : NSObject <PrototypeCopyProtocol>

@property (nonatomic, copy)   NSString *name;
@property (nonatomic, copy)   NSString *address;
@property (nonatomic, strong) NSNumber *age;
@property (nonatomic, strong) NSNumber *totalScore;

- (id)clone;

@end

NS_ASSUME_NONNULL_END
