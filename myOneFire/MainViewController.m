//
//  MainViewController.m
//  myOneFire
//
//  Created by ngds on 15/5/25.
//  Copyright (c) 2015年 ngds. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (strong, nonatomic) UIView *baseView;
@end

@implementation MainViewController
-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"主  页";
//    UIButton * backBut = []
//    self.navigationController.navigationBar =
    _baseView = [[UIView alloc] initWithFrame:CGRectMake(10, 100, 100, 100)];
    _baseView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_baseView];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 40);
    [button setBackgroundColor:[UIColor redColor]];
    [button setTitle:@"开始" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(butttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}
-(void)butttonClicked:(UIButton *)but
{
//    [self createLocalNotification];
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(changeFrame:) userInfo:nil repeats:YES];
    NSTimer * timer = [NSTimer scheduledTimerWithTimeInterval:5 invocation:nil repeats:NO];
    [timer setFireDate:[NSDate date]];
    
}
-(void)changeFrame:(NSTimer *)timer
{
//    [timer setFireDate:[NSDate date]];
    _baseView.frame = CGRectMake(20, 200, 20, 20);
    _baseView.backgroundColor = [UIColor redColor];
    [timer invalidate];
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


-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
