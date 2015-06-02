//
//  MyModel.m
//  myOneFire
//
//  Created by ngds on 15/5/25.
//  Copyright (c) 2015年 ngds. All rights reserved.
//

#import "MyModel.h"

static MyModel * _singleModel = nil;
@implementation MyModel
+(MyModel *)modelWithDic:(NSDictionary *)dic
{
    return [self modelWithDic:dic];;
}

-(MyModel *)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        self = [[MyModel alloc] init];
        [self setValuesForKeysWithDictionary:dic];
    }
    
    return self;
}
+(MyModel *)shareInstance
{
    @synchronized(self) {
        if (!_singleModel) {
            _singleModel = [[self alloc] init];
        }
    }
    return _singleModel;
}
+(id)allocWithZone:(NSZone *)zone
{
    if (_singleModel == nil) {
        _singleModel = [[self class] alloc];
    }
    return _singleModel;
}

@end
