//
//  MyViewController.m
//  iOS_XLB
//
//  Created by 白石洲霍华德 on 2017/7/27.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import "MyViewController.h"
#import "SetViewController.h"
@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title=@"我的";
    
    
    
    [self showProgress];

    
    [(BaseTabBarController* )self.tabBarController setBadgeValue:@"12" index:0];
    
    
    
    NSString   *login_inApkContext=@"/ipay/f6ajax/com.zteict.xinlebao.business.base.BusinessCenter4ApkUser.login_inApkContext";
    
    
    NSMutableDictionary *parameters=[[NSMutableDictionary alloc] init];
    
    [parameters setValue:@"caidewu" forKey:@"userName"];
    [parameters setValue:@"123456" forKey:@"password"];
    
    
    [self.requestManager postRequestWithUrl:login_inApkContext params:parameters success:^(id  _Nullable responseObject) {
        
        NSLog(@"哈哈");
    } failure:^(NSError * _Nonnull error) {
        
        NSLog(@"======%@",error);
    }];
    
}


-(void)rightAction
{
//    [self pushViewControllerWithName:@"SetViewController"];
    
    
    SetViewController *vc = [SetViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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