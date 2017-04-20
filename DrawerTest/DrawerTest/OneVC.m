//
//  OneVC.m
//  DrawerTest
//
//  Created by 战立军 on 2017/4/18.
//  Copyright © 2017年 战立军. All rights reserved.
//

#import "OneVC.h"
//为MMDrawerController框架中
#import "MMDrawerController.h"
#import "UIViewController+MMDrawerController.h"

#import "OneoroneVC.h"

@interface OneVC ()

@end

@implementation OneVC
//-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
//        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"消息" image:[[UIImage imageNamed:@"tab_recent_nor"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"tab_recent_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(nextbutto) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
 
    
    
    
    //标题
    self.navigationItem.title = @"其他";
    
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    //导航栏颜色
    [self.navigationController.navigationBar setBarTintColor:[UIColor blueColor]];
    
    //小点
    UIBarButtonItem *listButton = [[UIBarButtonItem alloc] initWithTitle:@"走了" style:UIBarButtonItemStyleDone target:self action:@selector(tiaozhuan)];
    self.navigationItem.rightBarButtonItem = listButton;
    
    // Do any additional setup after loading the view.
}
- (void)tiaozhuan
{
    if (!self.mm_drawerController.openSide) {
        //打开
        [self.mm_drawerController openDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
            NSLog(@"####################");
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)nextbutto
{
    
    OneoroneVC *oneorone = [[OneoroneVC alloc] init];
    oneorone.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:oneorone animated:YES];
    
    

}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
        [self.mm_drawerController setRightDrawerViewController:nil];
    }];
    
    self.mm_drawerController.openDrawerGestureModeMask = MMOpenDrawerGestureModeAll;
    self.mm_drawerController.closeDrawerGestureModeMask = MMCloseDrawerGestureModeAll;
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
