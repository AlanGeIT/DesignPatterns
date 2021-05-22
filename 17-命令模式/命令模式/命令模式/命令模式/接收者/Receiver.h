//
//  Receiver.h
//  命令模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import <UIKit/UIKit.h>

@interface Receiver : NSObject {
    CGFloat _white;  // 白的
    CGFloat _alpha;  // 透明度
}

@property (nonatomic, strong) UIView *receiverView; // 接收者的view

// 变暗的接口
- (void)mackeDarker:(CGFloat)pamameter;

// 变亮的接口
- (void)mackeLighter:(CGFloat)pamameter;

@end
