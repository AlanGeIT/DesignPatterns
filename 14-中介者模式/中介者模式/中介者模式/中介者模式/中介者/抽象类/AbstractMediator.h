//
//  AbstractMediator.h
//  中介者模式
//
//  Created by Alan Ge on 2020/10/4.
//

#import <Foundation/Foundation.h>
#import "AbstrctColleague.h"// 引用关系

@interface AbstractMediator : NSObject <ColleagueDelegate>

@end
