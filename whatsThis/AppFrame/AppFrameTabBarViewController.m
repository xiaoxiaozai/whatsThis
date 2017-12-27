//
//  AppFrameTabBarViewController.m
//  QyfShop
//
//  Created by 翟宇 on 2017/1/16.
//  Copyright © 2017年 翟宇. All rights reserved.
//

#import "AppFrameTabBarViewController.h"

#define kClassKey   @"rootVCClassString"
#define kTitleKey   @"title"
#define kImgKey     @"imageName"
#define kSelImgKey  @"selectedImageName"
#define Global_tintColor GREEN_COLOR

@interface AppFrameTabBarViewController () <UITabBarControllerDelegate>

@end

@implementation AppFrameTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColorFromRGB(0xf7f7f7);
    
    NSArray *childItemsArray = @[
                                 @{kClassKey  : @"MainViewController",
                                   kTitleKey  : @"高速",
                                   kImgKey    : @"gaosu_off_btn",
                                   kSelImgKey : @"gaosu_on_btn"},
                                 
                                 @{kClassKey  : @"MainViewController",
                                   kTitleKey  : @"ETC",
                                   kImgKey    : @"etc_off_btn",
                                   kSelImgKey : @"etc_on_btn"},
                                 
                                 @{kClassKey  : @"MainViewController",
                                   kTitleKey  : @"周边",
                                   kImgKey    : @"zhoubian_off_btn",
                                   kSelImgKey : @"zhoubian_on_btn"},
                                 
                                 @{kClassKey  : @"MainViewController",
                                   kTitleKey  : @"我",
                                   kImgKey    : @"geren_off_btn",
                                   kSelImgKey : @"geren_on_btn"}
                                 
                                 ];
    
    [childItemsArray enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL *stop) {
        UIViewController *vc = [NSClassFromString(dict[kClassKey]) new];
        vc.title = dict[kTitleKey];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        UITabBarItem *item = nav.tabBarItem;
        item.title = dict[kTitleKey];
        item.image = [UIImage imageNamed:dict[kImgKey]];
        item.selectedImage = [[UIImage imageNamed:dict[kSelImgKey]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName : Global_tintColor} forState:UIControlStateSelected];
        [self addChildViewController:nav];
    }];
    
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
