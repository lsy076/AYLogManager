//
//  ViewController.m
//  AYLogManager
//
//  Created by 赖盛源 on 2019/9/16.
//  Copyright © 2019 dnake_ay. All rights reserved.
//

#import "ViewController.h"
#import <AYLogManager/AYAlertViewController.h>
#import <AYLogManager/AYWebViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.isCanShake = YES;
    
    UIButton *showLog = [UIButton buttonWithType:UIButtonTypeSystem];
    showLog.frame = CGRectMake(0, 0, 200, 80);
    showLog.center = self.view.center;
    [showLog setTitle:@"输入密码弹出log列表" forState:UIControlStateNormal];
    [showLog addTarget:self action:@selector(showLogMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showLog];
}

- (void)showLogMethod
{
    [AYAlertViewController alertViewController:self title:nil message:@"查看log请输入：123456" cancel:@"Cancel" confirm:@"OK" style:AYAlertViewControllerStylePasswordText alert:^(UIAlertController *action) {
        
        UITextField *pwdText = action.textFields[0];
        
        if ([pwdText.text isEqualToString:@"123456"]) {
            
            AYWebViewController *webViewVC = [AYWebViewController new];
            
            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:webViewVC];
            
            [self presentViewController:navigationController animated:YES completion:nil];
        }
    }];
    
}


@end
