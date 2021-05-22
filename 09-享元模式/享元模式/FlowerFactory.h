//
//  FlowerFactory.h
//  享元模式
//
//  Created by Alan Ge on 2020/10/3.
//

#import <Foundation/Foundation.h>
#import "Flower.h"

typedef enum {
    kRedFlower,         // 0
    kBlueFlower,        // 1
    kYellowFlower,      // 2
    kTotalNumberFlower  // 用于计数的.
}FlowerType;

@interface FlowerFactory : NSObject

// 缓存池, 存放享元对象
@property (nonatomic, strong) NSMutableDictionary *flowerPools;

// 创建花的工厂方法
- (Flower *)flowerViewWithType:(FlowerType)type;

- (void)detailsType;

@end
