//
//  ConcreteBuild.h
//  Builder_One
//
//  Created by Alan Ge on 2020/10/4.
//

// 生成者
// 生成者和构建者 - 实现关系

#import <Foundation/Foundation.h>
#import "Builder.h"// 构建者 - 协议 - 实现关系

@interface ConcreteBuild : NSObject <Builder>

@end
