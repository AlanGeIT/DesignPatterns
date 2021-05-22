//
//  Node.h
//  二叉树
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

// 当前节点的名字
@property (nonatomic, copy) NSString *nodeName;

// 左节点
@property (nonatomic, strong) Node *leftNode;

// 右节点
@property (nonatomic, strong) Node *rightNode;

// 初始化
+ (instancetype)nodeWithName:(NSString *)nodeName;

@end
