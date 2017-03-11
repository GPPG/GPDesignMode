//
//  GPSingleton.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/11.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPSingleton.h"

@implementation GPSingleton
+ (instancetype)shareTools
{
    return [[self alloc] init];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:zone];
    });
    return instance;
}

@end
