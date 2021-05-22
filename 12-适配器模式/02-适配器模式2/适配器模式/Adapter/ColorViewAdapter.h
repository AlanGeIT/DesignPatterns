//
//  ColorViewAdapter.h
//  适配器模式
//
//  Created by Alan Ge on 2020/10/3.
//

#import <UIKit/UIKit.h>
#import "TargeyProtocol.h"

@interface ColorViewAdapter : NSObject <TargeyProtocol>

@property (nonatomic, strong) id model; /**< 输入的模型数据 */

- (instancetype)initWithModel:(id)model; /**< 初始化方法 */

@end
