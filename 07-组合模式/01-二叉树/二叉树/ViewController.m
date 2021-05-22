//
//  ViewController.m
//  二叉树
//
//  Created by Alan Ge on 2020/10/6.
//

#import "ViewController.h"
#import "Node.h"

@interface ViewController ()

// 根节点
@property (nonatomic, strong) Node *rootNode;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建根节点
    self.rootNode = [Node nodeWithName:@"A"];
    
    // 插入节点
    [self insertNodeTree:self.rootNode node:[Node nodeWithName:@"B"]];
    [self insertNodeTree:self.rootNode node:[Node nodeWithName:@"C"]];
    [self insertNodeTree:self.rootNode node:[Node nodeWithName:@"D"]];
    [self insertNodeTree:self.rootNode node:[Node nodeWithName:@"E"]];
    [self insertNodeTree:self.rootNode node:[Node nodeWithName:@"F"]];
    
    // 遍历二叉树
    [self treeIndfomationWithNode:self.rootNode];
}

// 往根节点插入节点
- (void)insertNodeTree:(Node *)tree node:(Node *)node {
    
    // 左边
    if (tree.leftNode == nil) {
        tree.leftNode = node;
        return;
    }
    
    // 右边
    if (tree.rightNode == nil) {
        tree.rightNode = node;
        return;
    }
    
    // 往根节点插入节点 - 递归形式
    [self insertNodeTree:tree.leftNode node:node];
}

// 遍历二叉树
- (void)treeIndfomationWithNode:(Node *)node {
    
    if (node.leftNode) {
        [self treeIndfomationWithNode:node.leftNode];
    }
    
    NSLog(@"%@", node.nodeName);
    
    if (node.rightNode) {
        [self treeIndfomationWithNode:node.rightNode];
    }
}

@end
