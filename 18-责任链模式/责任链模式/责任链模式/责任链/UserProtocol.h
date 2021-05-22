//
//  UserProtocol.h
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>

@protocol UserProtocol <NSObject>

@property (nonatomic, strong) id <UserProtocol> succcessor;// 下一个引用

// 处理请求的接口
- (void)handlerRequest:(id)request;

@end
