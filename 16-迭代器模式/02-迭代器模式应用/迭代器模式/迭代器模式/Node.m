//
//  Node.m
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

// 节点

#import "Node.h"

@implementation Node

+ (instancetype)nodeData:(id)data {
    Node *node = [[self alloc] init];
    node.data = data;
    
    return node;
}
@end
