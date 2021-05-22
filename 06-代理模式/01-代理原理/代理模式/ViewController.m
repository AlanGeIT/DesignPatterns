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

@interface ViewController () <PersonDelegate, DataProtocol>
@property (nonatomic, assign) NSInteger num;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *per = [Person new];
    per.delegate = self;
    [per run:50];
    
    // 因为苹果底层本身就需要使用到这样的一个循环引用.
    // Session发起网络请求的时候,用的是单例, 不能被释放.
//    [NSURLSession sessionWithConfiguration:<#(nonnull NSURLSessionConfiguration *)#> delegate:<#(nullable id<NSURLSessionDelegate>)#> delegateQueue:<#(nullable NSOperationQueue *)#>]
}

//- (void)caiPanSpeed:(NSInteger)speend {
//    NSLog(@"speend = %ld",speend);
//}

- (void)testData:(id <DataProtocol>)model {
    self.num = [model dataSouce1];
}

#pragma mark - PersonDelegate
- (void)person:(Person *)person run:(NSInteger)speed {
    NSLog(@"run = %ld",speed);
}

#pragma mark - DataProtocol

- (NSInteger)dataSouce1 {
    return 0;
}

- (NSInteger)dataSouce2 {
    return 0;
}

@end
