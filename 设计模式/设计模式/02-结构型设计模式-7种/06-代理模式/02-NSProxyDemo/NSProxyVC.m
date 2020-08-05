//
//  NSProxyVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/5.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "NSProxyVC.h"
#import "ContentProxy.h"

@interface NSProxyVC ()

@end

@implementation NSProxyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ContentProxy *proxy = [ContentProxy alloc];
    proxy.delegate = self;
    
    [proxy helloWorld];
}

- (void)helloWorld {
    NSLog(@"---ceshi----");
}

@end
