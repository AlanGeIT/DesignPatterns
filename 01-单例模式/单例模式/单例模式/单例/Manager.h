//
//  Manager.h
//  单例模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject

+ (id)sharedInstance;

@end

NS_ASSUME_NONNULL_END
