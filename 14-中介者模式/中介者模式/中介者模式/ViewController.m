//
//  ViewController.m
//  中介者模式
//
//  Created by Alan Ge on 2020/10/4.
//

#import "ViewController.h"
#import "TypeOneMediator.h"
#import "Colleague.h"

@interface ViewController ()

@property (nonatomic, strong) TypeOneMediator *mediator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mediator = [TypeOneMediator new];
    
    Colleague *colleagueA = [Colleague new];
    Colleague *colleagueB = [Colleague new];
    Colleague *colleagueC = [Colleague new];
    
    // 关联中介者和同事
    self.mediator.colleagueA = colleagueA;
    self.mediator.colleagueB = colleagueB;
    self.mediator.colleagueC = colleagueC;

    colleagueA.delegate = self.mediator;
    colleagueB.delegate = self.mediator;
    colleagueC.delegate = self.mediator;
    
    [colleagueA changeValue:2.f];
    NSLog(@"colleagueA = %@", [self.mediator values]);
    
    [colleagueB changeValue:2.f];
    NSLog(@"colleagueB = %@", [self.mediator values]);
    
    [colleagueC changeValue:2.f];
    NSLog(@"colleagueC = %@", [self.mediator values]);
}

@end
