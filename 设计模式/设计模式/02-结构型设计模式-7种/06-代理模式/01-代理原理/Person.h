//
//  Person.h
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

//  裁判要知道你得多快

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Person;

@protocol PersonDelegate <NSObject>
- (void)run2:(NSInteger)speed;
@end

@interface Person : NSObject

@property (nonatomic, weak) id <PersonDelegate> delegate;

- (void)run:(NSInteger)speed;

@end

NS_ASSUME_NONNULL_END
