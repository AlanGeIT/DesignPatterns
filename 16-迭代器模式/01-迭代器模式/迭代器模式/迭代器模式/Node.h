//
//  Node.h
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

// 指向下一个节点(链表中的指针)
@property (nonatomic, strong) Node *nextNode;

// 节点里面的data
@property (nonatomic, strong) id data;

// 节点数据
+ (instancetype)nodeData:(id)data;

@end
