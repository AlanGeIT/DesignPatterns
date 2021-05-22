//
//  MyView.m
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

#import "MyView.h"
#import "LinkedList.h"

@interface MyView ()

@property (nonatomic, strong) UIButton      *myBtn;
@property (nonatomic, strong) UILabel       *myLabel;
@property (nonatomic, strong) UITextField   *myTextField;

@property (nonatomic, strong) LinkedList    *linkedList;
@property (nonatomic, strong) Node          *currentNode;

@end

@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.myBtn = [[UIButton alloc] initWithFrame:self.bounds];
        self.myLabel  = [[UILabel alloc] initWithFrame:self.bounds];
        self.myTextField  = [[UITextField alloc] initWithFrame:self.bounds];
        
        [self addSubview:self.myBtn];
        [self addSubview:self.myLabel];
        [self addSubview:self.myTextField];
        
        // 初始化链表
        self.linkedList = [[LinkedList alloc] init];
        [self.linkedList addData:self.myBtn];
        [self.linkedList addData:self.myLabel];
        [self.linkedList addData:self.myTextField];
        
        self.currentNode = self.linkedList.headNode;
    }
    return self;
}

#pragma mark - IteratorProtocol
// 下一个对象
- (id)nextObject {
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

// 重置迭代器指针
- (void)resetIterator {
    self.currentNode = self.linkedList.headNode;
}

@end
