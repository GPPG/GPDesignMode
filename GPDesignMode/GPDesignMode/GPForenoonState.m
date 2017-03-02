//
//  GPForenoonState.m
//  GPDesignMode
//
//  Created by dandan on 17/3/2.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPForenoonState.h"
#import "GPNoonState.h"

@implementation GPForenoonState

- (void)writeProgram:(GPWork *)work
{
    if (work.hour >= 9 && work.hour < 12) {
        NSLog(@"当前时间%ld,上午工作,精神百倍",work.hour);
    }else{
        work.state = [[GPNoonState alloc]init];
        [work writeProgram];
    }
}
@end
