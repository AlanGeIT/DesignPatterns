//
//  ViewController.m
//  代理模式
//
//  Created by Alan Ge on 2020/10/4.
//

//  裁判   能知道r跑了多远的信息.

#import "ViewController.h"
#import "Person.h"
#import "DataProtocol.h"

@interface ViewController () <PersonDelegate>
@property (nonatomic, assign) NSInteger name;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *per = [Person new];
    per.delegate = self;
    [per run:50];
}

- (void)run2:(NSInteger)speed {
    NSLog(@"run = %ld", speed);
    NSLog(@"来了");
}

#pragma mark - DataProtocol
- (void)testData:(id<DataProtocol>)model {
    self.name = [model dataSouce1];
}

@end
