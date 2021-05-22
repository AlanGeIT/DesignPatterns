//
//  LinkedIterator.m
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

#import "LinkedIterator.h"

@interface LinkedIterator ()

@property (nonatomic, strong) LinkedList *linkedList;

@property (nonatomic, strong) Node *currentNode;

@end

@implementation LinkedIterator

+ (instancetype)linkedObjectIterator:(LinkedList *)linkedList {
    // 1.初始化迭代器
    LinkedIterator *linkedIterator = [[LinkedIterator alloc] init];
    
    // 2. 保存链表数据
    linkedIterator.linkedList = linkedList;
    linkedIterator.currentNode = linkedList.headNode;
    
    return linkedIterator;
}

- (id)nextObject {
    
    self.currentNode = self.currentNode.nextNode;
    
    return self.currentNode;
}

@end
