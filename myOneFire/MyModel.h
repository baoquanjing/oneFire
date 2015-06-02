//
//  MyModel.h
//  myOneFire
//
//  Created by ngds on 15/5/25.
//  Copyright (c) 2015年 ngds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyModel : NSObject

@property (copy, nonatomic) NSString * name;
@property (copy, nonatomic) NSString * title;
@property (copy, nonatomic) NSString * desc;
@property (copy, nonatomic) NSString * taskDate;
@property (copy, nonatomic) NSString * taskId;
@property (copy, nonatomic) NSString * taskName;
@property (copy, nonatomic) NSString * taskDesc;
@property (copy, nonatomic) NSString * shopName;
@property (copy, nonatomic) NSString * shopDesc;
@property (copy, nonatomic) NSString * shopDate;
@property (copy, nonatomic) NSString * shopAward;


+(MyModel *)modelWithDic:(NSDictionary *)dic;

@end
