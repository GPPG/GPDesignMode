//
//  GPNoonState.m
//  GPDesignMode
//
//  Created by dandan on 17/3/2.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPNoonState.h"
#import "GPAfternoonState.h"

@implementation GPNoonState

- (void)writeProgram:(GPWork *)work
{
    if (work.hour >= 12 && work.hour < 13) {
        NSLog(@"当前时间%ld,吃过午饭,困成狗,睡会觉",work.hour);
    }else{
        work.state = [[GPAfternoonState alloc]init];
        [work writeProgram];
    }
}
@end
