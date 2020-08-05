//
//  DelegatePrincipleVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

//  裁判   能知道r跑了多远的信息.

#import "DelegatePrincipleVC.h"
#import "Person.h"
#import "DataProtocol.h"

@interface DelegatePrincipleVC () <PersonDelegate>

@property (nonatomic, assign) NSInteger name;

@end

@implementation DelegatePrincipleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *per = [Person new];
    per.delegate = self;
    [per run:50];
}

- (void)run2:(NSInteger)speed {
    NSLog(@"run = %ld", (long)speed);
}

#pragma mark - DataProtocol
- (void)testData:(id<DataProtocol>)model {
    self.name = [model dataSouce1];
}

@end
