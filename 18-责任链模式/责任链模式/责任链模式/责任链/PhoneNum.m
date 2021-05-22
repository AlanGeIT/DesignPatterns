//
//  PhoneNum.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "PhoneNum.h"
#import "RegExCategories.h"

@interface PhoneNum ()

@property (nonatomic, strong) id<UserProtocol> nextSucccessor;

@end

@implementation PhoneNum

- (void)handlerRequest:(id)request {
    
    NSString *string = request;
    
    BOOL isMatch =[string isMatch:RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")];
    
    if (isMatch == NO) {
        [self.nextSucccessor handlerRequest:string];
    } else {
        NSLog(@"%@ 是电话号码",string);
    }
}

- (void)setSucccessor:(id<UserProtocol>)succcessor {
    self.nextSucccessor = succcessor;
}

- (id<UserProtocol>)succcessor {
    return self.nextSucccessor;
}

@end

