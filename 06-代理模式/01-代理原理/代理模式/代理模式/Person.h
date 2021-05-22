//
//  Person.h
//  代理模式
//
//  Created by Alan Ge on 2020/10/4.
//

//  裁判要知道你得多快

#import <Foundation/Foundation.h>

@class Person;

@protocol PersonDelegate <NSObject>

- (void)person:(Person *)person run:(NSInteger)speed;

@end

@interface Person : NSObject

@property (nonatomic, weak) id<PersonDelegate> delegate;

- (void)run:(NSInteger)speed;

@end
