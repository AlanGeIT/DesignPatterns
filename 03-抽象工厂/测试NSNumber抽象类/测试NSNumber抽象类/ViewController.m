//
//  ViewController.m
//  测试NSNumber抽象类
//
//  Created by Alan Ge on 2020/10/3.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumber *num = [[NSNumber alloc] init];
    
    NSNumber *intNum = [NSNumber numberWithInt:97];
    NSNumber *floatNum = [NSNumber numberWithFloat:1.0f];
    NSNumber *boolNum = [NSNumber numberWithBool:YES];
    
    NSLog(@"num = %@",[[num class] description]);

    NSLog(@"intNum = %@",[[intNum class] description]);
    NSLog(@"floatNum = %@",[[floatNum class] description]);
    NSLog(@"boolNum = %@",[[boolNum class] description]);
    
    NSLog(@"转化 = %c",[intNum charValue]);
}


@end
