//
//  ViewController.m
//  迭代器模式
//
//  Created by Alan Ge on 2020/10/5.
//

#import "ViewController.h"
#import "MyView.h"
#import "Node.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyView *view = [[MyView alloc] initWithFrame:self.view.bounds];
    Node *node = nil;
    
    // 重置迭代器指针
    [view resetIterator];
    while (node = [view nextObject]) {
        NSLog(@"%@", node.data);
    }
    
    NSLog(@"第二次打印");
    
    // 重置迭代器指针
    [view resetIterator];// 如果不重置，因为最后一个nextObject指向NULL，就不会遍历了
    while (node = [view nextObject]) {
        NSLog(@"%@", node.data);
    }
}


@end

