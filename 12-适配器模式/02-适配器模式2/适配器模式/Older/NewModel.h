//
//  NewModel.h
//  适配器模式
//
//  Created by Alan Ge on 2020/10/3.
//

#import <Foundation/Foundation.h>

@interface NewModel : NSObject

@property (nonatomic, strong) NSString *smallViewColor; /**< 颜色 */
@property (nonatomic, copy) NSString *userName;         /**< 用户名 */
@property (nonatomic, copy) NSString *password;         /**< 密码 */

@end
