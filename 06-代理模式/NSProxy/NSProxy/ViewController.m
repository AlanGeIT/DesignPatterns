//
//  ViewController.m
//  NSProxy
//
//  Created by Alan Ge on 2020/10/4.
//

#import "ViewController.h"
#import "ContentProxy.h"

@interface ViewController () <MessagesProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // proxy就是一个代理
    ContentProxy *proxy = [ContentProxy alloc];
    proxy.delegate = self;
    
    // 有实现的方法
    [proxy helloWorld];
    // 没有实现的方法
    [proxy notImplement];
}

// 有实现的方法
- (void)helloWorld {
    NSLog(@"---helloWorld----");
}

@end
