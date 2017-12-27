//
//  LeftScrollView.m
//  whatsThis
//
//  Created by 翟宇 on 2017/12/27.
//  Copyright © 2017年 翟宇. All rights reserved.
//

#import "LeftScrollView.h"

@implementation LeftScrollView

- (instancetype)init {
    if(self = [super init]) {
        self.layer.borderWidth = 1;
        self.layer.borderColor = BLACK_COLOR.CGColor;
        self.frame = CGRectMake(-SCREEN_WIDTH * 0.6, 0, SCREEN_WIDTH * 0.6, SCREEN_HEIGHT);
    };
    
    return self;
}

- (void) moveToRight {
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(0, 0, SCREEN_WIDTH * 0.6, SCREEN_HEIGHT);
    }];
}
- (void) moveToLeft {
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(-SCREEN_WIDTH * 0.6, 0, SCREEN_WIDTH * 0.6, SCREEN_HEIGHT);
    }];
}

@end
