//
//  Node.h
//  组合模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, copy)   NSString               *nodeName; // 节点名字
@property (nonatomic, strong) NSMutableArray<Node *> *childNode;// 子节点集合

// 初始化
+ (instancetype)nodeWithNodeName:(NSString *)nodeName;

// 添加子节点
- (void)addNode:(Node *)node;

// 删除子节点
- (void)removeNode:(Node *)node;

// 获取子节点
- (Node *)nodeAtIndex:(NSInteger)index;

// 打印Node
- (void)operation;

@end
