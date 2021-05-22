//
//  Node.m
//  二叉树
//
//  Created by Alan Ge on 2020/10/6.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithName:(NSString *)nodeName {
    Node *node = [[[self class] alloc] init];
    node.nodeName = nodeName;
    return node;
}

@end
