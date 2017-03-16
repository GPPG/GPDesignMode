//
//  GPMajordomo.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPMajordomo.h"
#import "GPRequest.h"

@implementation GPMajordomo
- (void)requestApplications:(GPRequest *)request
{
    if ([request.requestType isEqualToString:@"请假"] && request.number < 5) {
        NSLog(@"%@%@%ld天,望批准",request.name,request.requestType,request.number);
    }else{
        if (self.superior) {
            [self.superior requestApplications:request];
        }
    }
}
@end
