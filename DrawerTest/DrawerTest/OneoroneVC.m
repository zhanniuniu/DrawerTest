//
//  OneoroneVC.m
//  DrawerTest
//
//  Created by 战立军 on 2017/4/18.
//  Copyright © 2017年 战立军. All rights reserved.
//

#import "OneoroneVC.h"
//为MMDrawerController框架中
#import "MMDrawerController.h"
#import "UIViewController+MMDrawerController.h"
#import "OneortwoVC.h"
@interface OneoroneVC ()

@end

@implementation OneoroneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(tiaozhuan) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tiaozhuan
{
    [self.navigationController pushViewController:[[OneortwoVC alloc] init] animated:YES];
}



-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.mm_drawerController.openDrawerGestureModeMask = MMOpenDrawerGestureModeNone;
    self.mm_drawerController.closeDrawerGestureModeMask = MMCloseDrawerGestureModeNone;
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
