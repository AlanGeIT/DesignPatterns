//
//  ViewController.m
//  Builder_One
//
//  Created by Alan Ge on 2020/10/4.
//

#import "ViewController.h"
#import "Director.h"
#import "ConcreteBuild.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 组装者和构建者的关系：聚合关系
    // 构建者和生成者的关系：实现关系
    // 构建者：抽象类
    
    // 1.创建生成者，知道要做的产品
    ConcreteBuild *build = [[ConcreteBuild alloc] init];
    NSString *str2 = [build builderPart];
    
    // 2.创建承包商
    Director *director = [[Director alloc] initWithBuilder:build];
    
    // 3.交付产品
    NSString *str = [director construct];
    NSLog(@"str = %@, str2 = %@",str, str2);
    
}

@end
