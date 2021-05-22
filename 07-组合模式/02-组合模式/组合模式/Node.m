//
//  Node.m
//  组合模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "Node.h"

@implementation Node

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.childNode = [NSMutableArray array];
    }
    return self;
}

// 初始化
+ (instancetype)nodeWithNodeName:(NSString *)nodeName {
    Node *node = [[[self class] alloc] init];
    node.nodeName = nodeName;
    
    return node;
}

// 添加子节点
- (void)addNode:(Node *)node {
    [self.childNode addObject:node];
}

// 删除子节点
- (void)removeNode:(Node *)node {
    [self.childNode removeObject:node];
}

// 获取子节点
- (Node *)nodeAtIndex:(NSInteger)index {
    if (index >= self.childNode.count) {
        return nil;
    } else {
        return self.childNode[index];
    }
}

// 打印Node
- (void)operation {
    NSLog(@"nodeName =  %@", self.nodeName);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"node - %@",self.nodeName];
}

@end
