//
//  ViewController.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

/**
 责任链模式:避免将一个请求的发送者与接收者耦合在一起, 让多个对象都有机会处理请求.  将接收请求的对象连接成一条链, 并且沿着这条链传递请求, 直到有一个对象能够处理它为止
 责任链模式 :也称职责链模式
 */

#import "ViewController.h"

#import "Person.h"
#import "ConcreteHandlerOne.h"
#import "ConcreteHandlerTwo.h"
#import "ConcreteHandlerThree.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.创建
    Handler *handler1 = [[ConcreteHandlerOne alloc] init];
    Handler *handler2 = [[ConcreteHandlerTwo alloc] init];
    Handler *handler3 = [[ConcreteHandlerThree alloc] init];

    // 2.设置响应器的顺序 1---> 2 ---->3
    handler1.successor = handler2;
    handler2.successor = handler3;
    
    // 3.创建person，把person进行传递
    Person *person = [[Person alloc] init];
    person.name = @"zhangsan";
    [handler1 handleRequest:person];
    person.name = @"lisi";
    [handler1 handleRequest:person];
    person.name = @"wangwu";
    [handler1 handleRequest:person];
}


@end

