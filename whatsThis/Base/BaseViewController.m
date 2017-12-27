//
//  BaseViewController.m
//  whatsThis
//
//  Created by 翟宇 on 2017/12/27.
//  Copyright © 2017年 翟宇. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController () <UIGestureRecognizerDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.backgroundColor = RGB(241, 242, 243);
    
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleDefault;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"current ViewController >>>>>>>>>> %@",[self class]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  添加返回按钮
 */
- (void)addBackBtn{
    //返回按钮
    UIButton* backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.backgroundColor = [UIColor clearColor];
    backBtn.frame = CGRectMake(0, 5, 30, 30);
    [backBtn setImage:[UIImage imageNamed:@"common_back"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:@"common_back"] forState:UIControlStateHighlighted];
    [backBtn addTarget:self action:@selector(navBack)
      forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
}

/**
 *  自定义返回
 */
- (void)navBack {
    [SVProgressHUD dismiss];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
