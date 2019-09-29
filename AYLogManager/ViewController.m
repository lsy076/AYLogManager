//
//  ViewController.m
//  AYLogManager
//
//  Created by dnake_ay on 2019/9/16.
//  Copyright © 2019 dnake_ay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *showLog = [UIButton buttonWithType:UIButtonTypeSystem];
    showLog.frame = CGRectMake(0, 0, 200, 80);
    showLog.center = self.view.center;
    [showLog setTitle:@"输入密码弹出log管理" forState:UIControlStateNormal];
    [showLog addTarget:self action:@selector(showLogMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showLog];
}

- (void)showLogMethod
{
    AYLogNavigationController *navigationController = [AYLogNavigationController setupLogViewController];
    
    [self presentViewController:navigationController animated:YES completion:nil];
    
}


@end
