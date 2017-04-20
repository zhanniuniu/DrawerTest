//
//  ThreeVC.m
//  DrawerTest
//
//  Created by 战立军 on 2017/4/18.
//  Copyright © 2017年 战立军. All rights reserved.
//

#import "ThreeVC.h"
//为MMDrawerController框架中
#import "MMDrawerController.h"
#import "UIViewController+MMDrawerController.h"


@interface ThreeVC ()

@end

@implementation ThreeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.mm_drawerController.openDrawerGestureModeMask = MMOpenDrawerGestureModeAll;
    self.mm_drawerController.closeDrawerGestureModeMask = MMCloseDrawerGestureModeAll;
}


@end
