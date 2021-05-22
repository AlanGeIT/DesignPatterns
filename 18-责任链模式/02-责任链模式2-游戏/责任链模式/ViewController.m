//
//  ViewController.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "ViewController.h"

#import "KuiJia.h"
#import "MoKangKuiJia.h"
#import "Person.h"

#import "WuQi.h"
#import "MoFa.h"
#import "ShanDian.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)attack:(UIButton *)sender {
    
    /* ************** 设置责任链 ************** */
    // 1.创建人物
    Handler *person = [[Person alloc] init];
    
    // 2.增加魔法盾牌
    Handler *moKangKuiJia = [[MoKangKuiJia alloc] init];
    moKangKuiJia.nextHandler = person;
    
    // 3.穿盔甲
    Handler *kuiJia = [[KuiJia alloc] init];
    kuiJia.nextHandler = moKangKuiJia;
    
    /* ************** 攻击 ************** */
    
    // 1.武器攻击
    GongJi *wuqi = [[WuQi alloc] init];
    [kuiJia handleRequest:wuqi];
    
    NSLog(@"----------------------");
    
    // 2.魔法攻击
    GongJi *mofa = [[MoFa alloc] init];
    [kuiJia handleRequest:mofa];
    
    NSLog(@"----------------------");
    
    // 3.闪电攻击
    GongJi *sd = [[ShanDian alloc] init];
    [kuiJia handleRequest:sd];
}

@end

