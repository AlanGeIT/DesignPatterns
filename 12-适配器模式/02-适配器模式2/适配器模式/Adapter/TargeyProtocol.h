//
//  TargeyProtocol.h
//  适配器模式
//
//  Created by Alan Ge on 2020/10/3.
//

#import <Foundation/Foundation.h>

// 目标接口
@protocol TargeyProtocol <NSObject>

- (UIColor *)smallViewColor;    /**< 颜色 */
- (NSString *)userName;         /**< 用户名 */
- (NSString *)password;         /**< 密码 */

@end
