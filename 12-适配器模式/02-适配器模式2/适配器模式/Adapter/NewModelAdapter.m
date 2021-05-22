//
//  NewModelAdapter.m
//  适配器模式
//
//  Created by Alan Ge on 2020/10/3.
//

#import "NewModelAdapter.h"
#import "NewModel.h"

@implementation NewModelAdapter

- (UIColor *)smallViewColor {
    NewModel *model = self.model;
    
    // 如果传入的数据, 是二进制的. 这边就需要判断
    if ([model.smallViewColor isEqualToString:@"blue"]) {
        return [UIColor  blueColor];
    } else {
        return [UIColor redColor];
    }
}

- (NSString *)userName {
    NewModel *model = self.model;
    return model.userName;
}

- (NSString *)password {
    NewModel *model = self.model;
    return model.password;
}


@end
