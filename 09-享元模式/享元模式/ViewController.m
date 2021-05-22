//
//  ViewController.m
//  享元模式
//
//  Created by Alan Ge on 2020/10/3.
//
/**
 
 享元模式定义：相同的数据就拿来共享
 1、可共享享元对象
 2、享元池

 减少同一类对象的大量创建，减少节约了内存空间。

 使用范围：
    服务器端：查询火车票（共享对象）
    iOS端：多线程（线程池），UITableViewCell，UICollectionViewCell
 
 单例和享元的区别
 单例：只有一个对象
 享元：不只一个，可重复使用，保存在享元池里面
 
 */
#import "ViewController.h"
#import "FlowerFactory.h"
#import "Flower.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化工厂
    FlowerFactory *factory = [[FlowerFactory alloc] init];
    
    // 保存花的数组
    NSMutableArray *arrayFlowers = [[NSMutableArray alloc] init];
    
    // for循环调用
    for (int i = 0; i < 5; ++i) {
        
        // 设置随机的类型数
        FlowerType flowerType = arc4random_uniform(kTotalNumberFlower);
        
        // 使用享元池工厂方法来调用.类型是随机的
        Flower *flower = [factory flowerViewWithType:flowerType];
        // 简单的创建方式
//        Flower *flower = [[Flower alloc] init];
        
        [arrayFlowers addObject:flower];
        
        // 打印详情
        [factory detailsType];
    }
}

@end
