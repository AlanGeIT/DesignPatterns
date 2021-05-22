//
//  MementoProtocol.h
//  备忘录模式
//
//  Created by Alan Ge on 2020/10/8.
//

#import <Foundation/Foundation.h>

@protocol MementoProtocol <NSObject>

- (id)currentState;                 /**<  获取状态 */
- (void)recoverFromState:(id)state; /**<  恢复状态 */

@end
