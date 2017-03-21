//
//  GPUSA.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPUSA.h"

@implementation GPUSA

- (void)delare:(NSString *)message
{
    [self.mediator declare:message country:self];
}
- (void)getMessage:(NSString *)message
{
    NSLog(@"美国获得对方消息:%@",message);
}
@end
