//
//  ViewController.m
//  单例模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import "ViewController.h"
#import "Manager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Manager *manager1 = [[Manager alloc] init];
    NSLog(@"manager1 = %@",manager1);
    
    Manager *manager2 = [Manager sharedInstance];
    NSLog(@"manager2 = %@",manager2);
    
    Manager *manager3 = [Manager new];
    NSLog(@"manager3 = %@",manager3);
    
    Manager *manager4 = [Manager allocWithZone:nil];
    NSLog(@"manager4 = %@",manager4);
}


@end
