//
//  BlueView.m
//  工厂方法
//
//  Created by Alan Ge on 2020/10/2.
//

#import "BlueView.h"

@implementation BlueView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        
        UIImage *backgroundImage = [UIImage imageNamed:@"tupian2"];
        UIImageView *backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
        [self addSubview:backgroundView];
    }
    return self;
}


@end
