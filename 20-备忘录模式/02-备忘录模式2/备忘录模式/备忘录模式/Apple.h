//
//  Apple.h
//  备忘录模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"
#import "NSObject+MementoCenter.h"

@interface Apple : NSObject <MementoProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *age;

@end

