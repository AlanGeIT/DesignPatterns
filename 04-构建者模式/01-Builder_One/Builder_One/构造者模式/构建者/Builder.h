//
//  Builder.h
//  Builder_One
//
//  Created by Alan Ge on 2020/10/4.
//

// 构建者 - 协议

#import <Foundation/Foundation.h>

@protocol Builder <NSObject>

// 构建部分
- (NSString *)builderPart;

@end
