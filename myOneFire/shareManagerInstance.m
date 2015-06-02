//
//  shareManagerInstance.m
//  myOneFire
//
//  Created by ngds on 15/5/26.
//  Copyright (c) 2015年 ngds. All rights reserved.
//

#import "shareManagerInstance.h"

static shareManagerInstance * _shareManagerInstance = nil;
@implementation shareManagerInstance
+(shareManagerInstance *)shareManagerInstance
{
    dispatch_once_t onceManager;
    dispatch_once(&onceManager,^{
    
        _shareManagerInstance = [[shareManagerInstance alloc] init];
        
    });
    return _shareManagerInstance;
}

@end
