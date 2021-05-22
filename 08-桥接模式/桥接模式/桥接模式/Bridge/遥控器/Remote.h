//
//  Remote.h
//  桥接模式
//
//  Created by Alan Ge on 2020/10/2.
//

#import <Foundation/Foundation.h>
#import "TV.h"

@interface Remote : NSObject

@property (nonatomic, strong) TV *tv;

- (void)setCommand:(NSString *)commmand;

@end
