//
//  ViewController.m
//  组合模式
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
    self.rootNode = [Node nodeWithNodeName:@"A"];
    
    // 创建第一级字节点
    Node *b = [Node nodeWithNodeName:@"B"];
    [self.rootNode addNode:b];
    Node *c = [Node nodeWithNodeName:@"C"];
    [self.rootNode addNode:c];
    Node *d = [Node nodeWithNodeName:@"D"];
    [self.rootNode addNode:d];
    NSLog(@"rootNode.childNode：%@", self.rootNode.childNode);
    
    // 创建第二级子节点
    [c addNode:[Node nodeWithNodeName:@"E"]];
    [c addNode:[Node nodeWithNodeName:@"F"]];
    NSLog(@"c.childNode %@", c.childNode);
    
    // 删除节点
    [self.rootNode removeNode:b];
    NSLog(@"删除后rootNode.childNode：%@", self.rootNode.childNode);
}

@end

