//
//  ViewController.m
//  命令模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "ViewController.h"
#import "Receiver.h"
#import "Invoker.h"
#import "DarkerCommand.h"
#import "LighterCommand.h"

typedef enum : NSUInteger {
    kMinusBtnTag = 10,  // 降低亮度
    kAddBtnTag   = 20,  // 增加亮度
    kBackBtnTag  = 30,  // 回退亮度
} BtnTag;

@interface ViewController ()

@property (nonatomic, strong) Receiver *receiver;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 接收器
    self.receiver = [[Receiver alloc] init];
    self.receiver.receiverView = self.view;

    // NSInvocation:属于命令模式
}

- (IBAction)BtnClick:(UIButton *)button {
    
    if (button.tag == kMinusBtnTag) {
        // 变暗
        DarkerCommand *command = [[DarkerCommand alloc] initWithReceiver:self.receiver paramter:0.1];
        [[Invoker sharedInstance] addAndExcute:command];
        
    } else if (button.tag == kAddBtnTag) {
        // 变亮
        LighterCommand *command = [[LighterCommand alloc] initWithReceiver:self.receiver paramter:0.1];
        [[Invoker sharedInstance] addAndExcute:command];
        
    } else if (button.tag == kBackBtnTag) {
        // 回退操作
        [[Invoker sharedInstance] goBack];
    }
}

@end

