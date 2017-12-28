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
        self.frame = CGRectMake(-SCREEN_WIDTH * 0.618 - 10, -1, SCREEN_WIDTH * 0.618, SCREEN_HEIGHT + 2);
        self.backgroundColor = [UIColor whiteColor];
        
        self.layer.shadowColor = BLACK_COLOR.CGColor;//阴影颜色
        self.layer.shadowOffset = CGSizeMake(10, 10);//偏移距离
        self.layer.shadowOpacity = 0.5;//不透明度
    };
    
    return self;
}

- (void) moveToRight {
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(-1, self.frame.origin.y,self.frame.size.width, self.frame.size.height);
    }];
}
- (void) moveToLeft {
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(-SCREEN_WIDTH * 0.618 - 10, self.frame.origin.y,self.frame.size.width, self.frame.size.height);
    }];
}

@end
