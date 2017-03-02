//
//  GPAfternoonState.m
//  GPDesignMode
//
//  Created by dandan on 17/3/2.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPAfternoonState.h"
#import "GPEventState.h"

@implementation GPAfternoonState
- (void)writeProgram:(GPWork *)work
{
    if (work.hour >= 13 && work.hour <= 17) {
        NSLog(@"当前时间%ld,下午累成一条狗",work.hour);
    }else{
        work.state = [[GPEventState alloc]init];
        [work writeProgram];
    }
}
@end
