//
//  ViewController.m
//  TabelViewDemo
//
//  Created by Alan Ge on 2020/10/4.
//

// 目标接口、适配器、被适配者

// 适配器：controller
// 数据: 适配者. 数据转化成了UI
// 目标接口：<UITableViewDataSource,UITableViewDelegate>

/*
 适配器模式: 1.目标协议   2.适配者   3.适配器
 1.类适配器: 适配器是继承咋们适配者的
 2.对象适配器: 适配器是引用咱们的适配者的
 
 桥接模式跟适配器的区别:
 适配器: 改变已有的两个接口, 让他们相兼容. (组件之间的适配, 音视频方面, SDK跟自己写的代码之间适配)
 桥接模式:分离抽象化和实现类. 两者的接口可以不同,主要是在于分离
 
 桥接模式先有桥, 才有两端的实现.
 适配器模式是先有两边的, 才有适配器
 */

#import "ViewController.h"
#import "SubTableViewOne.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *arrayM;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id<BaseTableViewProtocol> subTableView = [[SubTableViewOne alloc] initWithFrame:self.view.bounds];
    
    self.arrayM = [NSMutableArray array];
    [self.arrayM addObject:@"6666"];
    [self.arrayM addObject:@"888"];

    [subTableView dataRefresh:self.arrayM];
    [self.view addSubview:(id)subTableView];
}

@end
