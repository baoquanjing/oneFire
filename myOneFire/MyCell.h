//
//  MyCell.h
//  myOneFire
//
//  Created by ngds on 15/5/25.
//  Copyright (c) 2015年 ngds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModel.h"

@interface MyCell : UITableViewCell
@property (strong, nonatomic)  UILabel * titleLabel;
@property (strong, nonatomic) UILabel * nameLabel;
@property (strong, nonatomic) UILabel * descLabel;
@property (strong, nonatomic) MyModel * model;

+(MyCell *)cellWithTableView:(UITableView *)tableView;
@end
