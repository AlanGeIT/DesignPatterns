//
//  UserName.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "UserName.h"
#import "RegExCategories.h"

@interface UserName ()
@property (nonatomic, strong) id<UserProtocol> nextSucccessor;
@end


@implementation UserName

- (void)handlerRequest:(id)request {
    NSString *string = request;
    
    BOOL isMatch =[string isMatch:RX(@"^[A-Za-z0-9]{6,20}+$")];
    
    if (isMatch == NO) {
        [self.nextSucccessor handlerRequest:string];
        
    } else {
        NSLog(@"%@ 是用户名",string);
    }
    
}

- (void)setSucccessor:(id<UserProtocol>)succcessor {
    self.nextSucccessor = succcessor;
}

- (id<UserProtocol>)succcessor {
    return self.nextSucccessor;
}

@end

