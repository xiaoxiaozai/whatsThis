//
//  MainViewController.m
//  whatsThis
//
//  Created by 翟宇 on 2017/12/27.
//  Copyright © 2017年 翟宇. All rights reserved.
//

#import "MainViewController.h"
#import "LeftScrollView.h"

@interface MainViewController ()
@property (nonatomic , strong) LeftScrollView* leftView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addGesture];
}

- (void) addGesture {
    UIPanGestureRecognizer *recognizer = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handleFrom:)];
    [self.view addGestureRecognizer:recognizer];
}

- (void) handleFrom:(UIPanGestureRecognizer*) recognizer {
    
    CGPoint translation = [recognizer translationInView:self.view];
    if (translation.x > 50) {
        [self.leftView moveToRight];
    }else{
        [self.leftView moveToLeft];
    }
    
}

- (LeftScrollView *)leftView {
    if (!_leftView) {
        _leftView = [[LeftScrollView alloc]init];
        [self.view addSubview:_leftView];
    }
    return _leftView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
