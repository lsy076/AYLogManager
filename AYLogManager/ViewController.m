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
    //摇一摇弹出LogViewController
    self.isCanShake = YES;
    
    UIButton *showLog = [UIButton buttonWithType:UIButtonTypeSystem];
    showLog.frame = CGRectMake(0, 0, 200, 80);
    showLog.center = self.view.center;
    [showLog setTitle:@"输入密码弹出log管理" forState:UIControlStateNormal];
    [showLog addTarget:self action:@selector(showLogMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showLog];
}

- (void)showLogMethod
{
    [AYAlertViewController alertViewController:self title:nil message:@"查看log请输入：123456" cancel:@"Cancel" confirm:@"OK" style:AYAlertViewControllerStylePasswordText alert:^(UIAlertController *action) {
        
        UITextField *pwdText = action.textFields[0];
        
        if ([pwdText.text isEqualToString:@"123456"]) {
            
            AYLogViewController *webViewVC = [AYLogViewController new];
            
            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:webViewVC];
            
            [self presentViewController:navigationController animated:YES completion:nil];
            
        }
    }];
    
}


@end
