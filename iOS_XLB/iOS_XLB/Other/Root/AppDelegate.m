//
//  AppDelegate.m
//  iOS_XLB
//
//  Created by JIng on 2017/7/24.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import "AppDelegate.h"
#import "SetViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   

    [self initView];
    
    
    [self initBugly];
    
    
    return YES;
}



#pragma mark-进入APP
-(void)enterApp
{
    
    
   
    BaseTabBarController *tabBarView= [[BaseTabBarController alloc]init];
    self.window.rootViewController = tabBarView;
    
    
    
    

}



#pragma mark-初始化视图

-(void)initView
{
   
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    SetViewController *SetVc= [SetViewController new];
    self.window.rootViewController = SetVc;
    
    [self.window makeKeyAndVisible];
}




#pragma mark-初始化Bugly
-(void)initBugly
{
     [Bugly startWithAppId:BUGLY_APP_ID];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
