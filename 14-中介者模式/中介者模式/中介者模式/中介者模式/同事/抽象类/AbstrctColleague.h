//
//  AbstrctColleague.h
//  中介者模式
//
//  Created by Alan Ge on 2020/10/4.
//

#import <Foundation/Foundation.h>
@class AbstrctColleague;

@protocol ColleagueDelegate <NSObject>

// 跟colleague对象的交互
- (void)colleagueEvent:(AbstrctColleague *)event;

@end

@interface AbstrctColleague : NSObject

@property (nonatomic, weak) id<ColleagueDelegate> delegate;

@end
