//
//  LinkedList.m
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

#import "LinkedList.h"

@implementation LinkedList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.headNode = [Node new];// 头节点
    }
    return self;
}

- (void)addData:(id)data {
    
    if (self.headNode == nil) {
        // 1. 头节点为空，就添加
        self.headNode = [Node nodeData:data];
    } else {
        // 2. 有头结点了,就插入到下一个节点
        [self addData:data node:self.headNode];
    }
    
    // 数量的增加
    self.numberOfNode++;
}

// 2. 有头结点了,就插入到下一个节点
- (void)addData:(id)data node:(Node *)node {
    
    if (node.nextNode == nil) {
        node.nextNode = [Node nodeData:data];
    } else {
        // 当下一个节点也有值了，进行递归调用
        [self addData:data node:node.nextNode];
    }
}

@end
