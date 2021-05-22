//
//  IteratorProtocol.h
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

// 抽象迭代器

#import <Foundation/Foundation.h>

@protocol IteratorProtocol <NSObject>

// 下一个对象
- (id)nextObject;

// 重置迭代器指针
- (void)resetIterator;

@end

