//
//  DataProtocol.h
//  代理模式
//
//  Created by Alan Ge on 2020/10/4.
//

//  协议:1.用来规范你传参的接口. 2.删选传入的对象

#import <Foundation/Foundation.h>

@protocol DataProtocol <NSObject>

- (NSInteger)dataSouce1;
- (NSInteger)dataSouce2;

@end
