//
//  MainViewController.m
//  DrawerTest
//
//  Created by 战立军 on 2017/4/18.
//  Copyright © 2017年 战立军. All rights reserved.
//

#import "MainViewController.h"
#import "OneVC.h"
#import "TwoVC.h"
#import "ThreeVC.h"

#define Color(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

@interface MainViewController ()
{
    UINavigationController *_oneVAC;
    UINavigationController *_twoVAC;
    UINavigationController *_threeVAC;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    OneVC *_oneVC = [[OneVC alloc] init];
    TwoVC *_twoVC = [[TwoVC alloc] init];
    ThreeVC *_threeVC = [[ThreeVC alloc] init];
    
    [self settabbarWithController:_oneVC selectImage:[UIImage imageNamed:@"tab_recent_press"] normalImage:[UIImage imageNamed:@"tab_recent_nor"] title:@"消息"];
    
    [self settabbarWithController:_twoVC selectImage:[UIImage imageNamed:@"tab_buddy_press"] normalImage:[UIImage imageNamed:@"tab_buddy_nor"] title:@"联系人"];
    
    [self settabbarWithController:_threeVC selectImage:[UIImage imageNamed:@"tab_qworld_press"] normalImage:[UIImage imageNamed:@"tab_qworld_nor"] title:@"动态"];
    
    
    _oneVAC = [[UINavigationController alloc] initWithRootViewController:_oneVC];
    _twoVAC = [[UINavigationController alloc] initWithRootViewController:_twoVC];
    _threeVAC = [[UINavigationController alloc] initWithRootViewController:_threeVC];
    
    self.tabBar.tintColor = Color(0, 185, 240);
    self.viewControllers = @[_oneVAC,_twoVAC,_threeVAC];
    
    
    UIView *bgView = [[UIView alloc] initWithFrame:self.tabBar.bounds];
    bgView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbar_bg"]];
    [self.tabBar insertSubview:bgView atIndex:0];
    self.tabBar.opaque = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)settabbarWithController:(UIViewController *)viewController selectImage:(UIImage *)selectimage normalImage:(UIImage *)normalimage title:(NSString *)title
{
    viewController.tabBarItem.selectedImage = [selectimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.image = [normalimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.title = title;
}

@end
