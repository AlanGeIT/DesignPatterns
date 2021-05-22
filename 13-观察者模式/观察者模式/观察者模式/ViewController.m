//
//  ViewController.m
//  观察者模式
//
//  Created by Alan Ge on 2020/10/4.
//

#import "ViewController.h"
#import "SubCenter.h"

@interface ViewController () <SubProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建订阅
    [SubCenter creatNumber:@"string"];
    
    // 添加订阅
    [SubCenter addUser:self wihtNumber:@"string"];
    
    // 发送消息
    [SubCenter sendMessage:@"11" withSubNumber:@"string"];
}

// 实现协议方法
- (void)subMessage:(id)message withSubNumber:(NSString *)withSubNumber {
    NSLog(@"----%@----%@",message, withSubNumber);
}


@end
