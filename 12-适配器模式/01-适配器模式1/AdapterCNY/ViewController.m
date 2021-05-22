//
//  ViewController.m
//  AdapterCNY
//
//  Created by Alan Ge on 2020/10/3.
//

/*
 
 类适配器: 通过继承来适配两个接口
 对象适配器: 不继承被适配者，他们是一个关联关系，相当于引用了这个类
           不是继承关系，是关联关系
*/

/*
 
 类适配器: 继承关系(被适配的类跟类适配器是继承关系)
 对象适配器: 不是继承关系，是单向关联关系
*/

#import "ViewController.h"
#import "AdapterCNY.h"      // 类适配器
#import "ObjectAdapter.h"   // 对象适配器
#import "AdapteeUSD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 类适配器
    AdapterCNY *adapterCNY = [[AdapterCNY alloc] init];
    float cny = [adapterCNY getCNY];
    NSLog(@"类适配器: 100美元 = %.2f", cny);
    
    // 对象适配器
    ObjectAdapter *adapterOCNY = [[ObjectAdapter alloc] initWithAdaptee:[AdapteeUSD new]];
    float cny2 = [adapterOCNY getCNY];
    NSLog(@"对象适配器:100美元 = %.2f",cny2);
}

@end
