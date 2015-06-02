//
//  AppDelegate.m
//  myOneFire
//
//  Created by ngds on 15/5/25.
//  Copyright (c) 2015年 ngds. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil]];
    MainViewController * main = [[MainViewController alloc] init];
    UINavigationController * navMain = [[UINavigationController alloc] initWithRootViewController:main];

    self.window.rootViewController = navMain;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
//    application.applicationIconBadgeNumber = 1;
    application.applicationIconBadgeNumber = 0;
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
-(void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    

}
-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
//    UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"时间到" message:notification.alertBody delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
//    [alertView show];
    application.applicationIconBadgeNumber += 1;
    
//    UILocalNotification * localNotification;
//    for (UILocalNotification * noti in [[UIApplication sharedApplication] scheduledLocalNotifications]) {
//        NSDictionary * userInfo = noti.userInfo;
//        if ([userInfo isEqualToDictionary:notification.userInfo]) {
//            notification = nil;
//            break;
//        }
//        
//    }

}
@end