//
//  GPManger.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPManger.h"

@implementation GPManger
- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}
- (void)requestApplications:(GPRequest *)request
{
    
}
@end
