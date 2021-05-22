//
//  ViewController.m
//  策略模式
//
//  Created by Alan Ge on 2020/10/2.
//

/**
 策略设计模式
 概念：定义一系列的算法，并且将每个算法封装起来，算法之间还可以互相替换。这种设计模式称为策略模式。
 
 介绍
     意图：定义一系列的算法,把它们一个个封装起来, 并且使它们可相互替换。
     主要解决：在有多种算法相似的情况下，使用 if...else 所带来的复杂和难以维护。
     何时使用：一个系统有许多许多类，而区分它们的只是他们直接的行为。
     如何解决：将这些算法封装成一个一个的类，任意地替换。
     关键代码：实现同一个接口。
     应用实例：
        1、诸葛亮的锦囊妙计，每一个锦囊就是一个策略。
        2、旅行的出游方式，选择骑自行车、坐汽车，每一种旅行方式都是一个策略。

 优点：
    1、算法可以自由切换。
    2、避免使用多重条件判断。
    3、扩展性良好。
 缺点：
    1、策略类会增多。
    2、所有策略类都需要对外暴露。
 
 使用场景：
    1、如果在一个系统里面有许多类，它们之间的区别仅在于它们的行为，那么使用策略模式可以动态地让一个对象在许多行为中选择一种行为。
    2、一个系统需要动态地在几种算法中选择一种。
    3、如果一个对象有很多的行为，如果不用恰当的模式，这些行为就只好使用多重的条件选择语句来实现。
 
 注意事项：如果一个系统的策略多于四个，就需要考虑使用混合模式，解决策略类膨胀的问题。
 
 步骤：
 1、定义一个抽象类：InputTextFieldValidate
 2、根据不同的算法，创建多个继承自抽象类的子类
     LatterTextFieldValidate
     NumberTextFieldValidate
 3、在子类实现对应的算法
 4、使用：根据不同的需求，使用对应的策略
     self.letterInput.inputValidate = [LatterTextFieldValidate new];        // 使用验证字母的算法
     self.numberInput.inputValidate = [NumberTextFieldValidate new];// 使用验证数字的算法
 
 优缺点
 优点：能解决代码的耦合度，
 缺点：为了解决代码耦合度，我们需要创建更多的类。
      控制器代码简洁，分离代码复用性高，逻辑清晰，方便拓展。
 */

#import "ViewController.h"
#import "CustomTextField.h"
#import "LatterTextFieldValidate.h"
#import "NumberTextFieldValidate.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CustomTextField *letterInput;


@property (weak, nonatomic) IBOutlet CustomTextField *numberInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.letterInput.delegate = self;
    self.numberInput.delegate = self;
    
    // 初始化
    self.letterInput.inputValidate = [LatterTextFieldValidate new];// 使用验证字母的算法
    self.numberInput.inputValidate = [NumberTextFieldValidate new];// 使用验证数字的算法

}

- (IBAction)btnClick:(id)sender {
    [self.view endEditing:YES];
}

#pragma mark - UITextFieldDelegate
// 结束编辑时
- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}


@end
