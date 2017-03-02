//
//  GPSleepState.m
//  GPDesignMode
//
//  Created by dandan on 17/3/2.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPSleepState.h"
#import "GPForenoonState.h"

@implementation GPSleepState

- (void)writeProgram:(GPWork *)work
{
    if (work.hour < 9 && work.hour >= 0) {
        NSLog(@"当前时间%ld,睡觉睡觉,要不然猝死了",work.hour);
    }else{
        work.state = [[GPForenoonState alloc]init];
        [work writeProgram];
    }
}
@end
