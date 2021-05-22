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

#import "ViewController.h"
#import "SubTableViewOne.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray        *arrayM;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SubTableViewOne *subTableView = [[SubTableViewOne alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:subTableView];
    
    // 赋值
    self.arrayM = [NSMutableArray array];
    [self.arrayM addObject:@"666"];
    [self.arrayM addObject:@"8888"];
    
    [subTableView dataRefresh:self.arrayM];
}


@end
