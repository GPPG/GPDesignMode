//
//  GPEventState.m
//  GPDesignMode
//
//  Created by dandan on 17/3/2.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPEventState.h"
#import "GPSleepState.h"

@implementation GPEventState

- (void)writeProgram:(GPWork *)work
{
    if (work.hour > 17 && work.hour < 23) {
        NSLog(@"当前时间%ld,加班,累死爹爹了",work.hour);
    }else{
        work.state = [[GPSleepState alloc]init];
        [work writeProgram];
    }
}
@end
