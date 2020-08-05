//
//  SingletonPatternVC.m
//  设计模式
//
//  Created by Alan Ge on 2020/8/4.
//  Copyright © 2020 Alan Ge. All rights reserved.
//

#import "SingletonPatternVC.h"
#import "SingletonPattern.h"

@interface SingletonPatternVC ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;

@end

@implementation SingletonPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"单例模式";
    
    SingletonPattern *single1 = [SingletonPattern shareInstance];
    NSLog(@"single1 = %@",single1);
    self.label1.text = [NSString stringWithFormat:@"[SingletonPattern shareInstance] =\n %@",single1];
    
    SingletonPattern *single2 = [[SingletonPattern alloc] init];
    NSLog(@"single2 = %@",single2);
    self.label2.text = [NSString stringWithFormat:@"[[SingletonPattern alloc] init] =\n %@",single2];
    
    SingletonPattern *single3 = [SingletonPattern allocWithZone:nil];
    NSLog(@"single3 = %@",single3);
    self.label3.text = [NSString stringWithFormat:@"[SingletonPattern allocWithZone:nil] =\n %@",single3];
}

@end
