//
//  Flower.h
//  享元模式
//
//  Created by Alan Ge on 2020/10/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Flower : NSObject

@property (nonatomic, copy) NSString *flowerColor; //  花色
@property (nonatomic, copy) NSString *flowerName; // 花名

@end

NS_ASSUME_NONNULL_END
