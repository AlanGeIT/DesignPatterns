//
//  TypeOneMediator.h
//  中介者模式
//
//  Created by Alan Ge on 2020/10/4.
//

#import "AbstractMediator.h"
#import "Colleague.h"

@interface TypeOneMediator : AbstractMediator

// 引用关系
@property (nonatomic, strong) Colleague *colleagueA;
@property (nonatomic, strong) Colleague *colleagueB;
@property (nonatomic, strong) Colleague *colleagueC;


// 查看信息
- (NSDictionary *)values;

@end
