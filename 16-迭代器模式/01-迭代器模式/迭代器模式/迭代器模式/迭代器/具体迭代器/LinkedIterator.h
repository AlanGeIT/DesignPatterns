//
//  LinkedIterator.h
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "IteratorProtocol.h"

@interface LinkedIterator : NSObject <IteratorProtocol>

// 迭代器的实现方法
+ (instancetype)linkedObjectIterator:(LinkedList *)linkedList;

@end

