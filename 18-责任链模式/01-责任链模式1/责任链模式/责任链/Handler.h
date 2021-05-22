//
//  Handler.h
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Handler : NSObject

// 对下一个进行引用
@property (nonatomic, strong) Handler *successor;// 自己引用自己

// 处理请求的接口
- (void)handleRequest:(Person *)request;

@end
