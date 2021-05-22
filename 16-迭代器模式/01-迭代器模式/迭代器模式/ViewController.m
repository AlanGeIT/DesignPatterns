//
//  ViewController.m
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

#import "ViewController.h"
#import "LinkedList.h"
#import "LinkedIterator.h"

@interface ViewController ()
@property (nonatomic, strong) LinkedList *list;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* ************** 系统迭代器 ************** */
    // 1. 数组集合
    NSArray *data = @[@"1",@"2",@"3",@"4"];
    
    // 2.创建迭代器
    NSEnumerator *enumerator = [data objectEnumerator];
    
    // 3.访问每一个元素
    id obj = nil;
    while (obj = [enumerator nextObject]) {
        NSLog(@"---%@",obj);
    }
    
    /* ************** 自己实现迭代器 ************** */
    
    // 1.创建集合类
    self.list = [[LinkedList alloc] init];
    [self.list addData:@"A"];
    [self.list addData:@"B"];
    [self.list addData:@"C"];
    
    // 2.迭代器的创建
    LinkedIterator *linkedIterator = [LinkedIterator linkedObjectIterator:self.list];
    
    // 3.访问每一个元素
    Node *node = nil;
    while (node = [linkedIterator nextObject]) {
        NSLog(@"---%@",node.data);
    }
}

@end

