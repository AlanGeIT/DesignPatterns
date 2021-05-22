//
//  TVKJ.m
//  桥接模式
//
//  Created by Alan Ge on 2020/10/2.
//

#import "TVKJ.h"

@implementation TVKJ
- (void)loadCommand:(NSString *)command {
    
    if ([command isEqualToString:@"up"]) {
        NSLog(@"您按的是KJ:----%@",command);
    }
    else if ([command isEqualToString:@"down"]){
        NSLog(@"您按的是KJ:----%@",command);
    }
    else if ([command isEqualToString:@"left"]){
        NSLog(@"您按的是KJ:----%@",command);
    }
    else if ([command isEqualToString:@"right"]){
        NSLog(@"您按的是KJ:----%@",command);
    }
    else {
        NSLog(@"超出范围");
    }
}
@end
