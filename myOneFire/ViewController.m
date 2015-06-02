//
//  ViewController.m
//  myOneFire
//
//  Created by ngds on 15/5/25.
//  Copyright (c) 2015年 ngds. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10, 100, 100, 40);
    [button setBackgroundColor:[UIColor grayColor]];
    [button setTitle:@"开始" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(butttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
-(void)butttonClicked:(UIButton *)but
{
    [self createLocalNotification];

}
-(void)createLocalNotification
{
    UILocalNotification * notification = [[UILocalNotification alloc] init];
    if (notification)
    {
        NSDate * nowDate = [NSDate date];
        notification.fireDate = [NSDate dateWithTimeInterval:10.0 sinceDate:nowDate];
        notification.repeatInterval = kCFCalendarUnitDay;
        notification.timeZone = [NSTimeZone defaultTimeZone];
        notification.alertBody = [NSString stringWithFormat:@"%@:wake up ,please!",@"John"];
        notification.alertAction = @"wwwwwwww";
        notification.soundName = UILocalNotificationDefaultSoundName;
        NSMutableDictionary * userInfo = [[NSMutableDictionary alloc] init];
        userInfo[@"kLocalNotificationID"] = @"kLocalNotificationID";
        notification.userInfo = userInfo;
        
        [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
