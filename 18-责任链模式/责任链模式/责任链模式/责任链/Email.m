//
//  Email.m
//  责任链模式
//
//  Created by Alan Ge on 2020/10/6.
//

#import "Email.h"
#import "RegExCategories.h"

@interface Email ()

@property (nonatomic, strong) id<UserProtocol> nextSucccessor;

@end

@implementation Email

- (void)handlerRequest:(id)request {
    NSString *string = request;
    
    BOOL isMatch =[string isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
    
    if (isMatch == NO) {
        [self.nextSucccessor handlerRequest:string];
        
    } else {
        NSLog(@"%@ 是邮箱",string);
    }
    
}

- (void)setSucccessor:(id<UserProtocol>)succcessor {
    self.nextSucccessor = succcessor;
}

- (id<UserProtocol>)succcessor {
    return self.nextSucccessor;
}

@end

