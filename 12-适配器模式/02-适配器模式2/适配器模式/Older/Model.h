//
//  Model.h
//  适配器模式
//
//  Created by Alan Ge on 2020/10/3.
//

#import <UIKit/UIKit.h>

@interface Model : NSObject
@property (nonatomic, strong) UIColor *smallViewColor; /**< 颜色 */
@property (nonatomic, copy) NSString *userName; /**< 用户名 */
@property (nonatomic, copy) NSString *password; /**< 密码 */
@end

