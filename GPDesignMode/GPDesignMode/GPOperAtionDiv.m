//
//  GPOperAtionDiv.m
//  GPDesignMode
//
//  Created by dandan on 17/2/13.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPOperAtionDiv.h"

@implementation GPOperAtionDiv
- (CGFloat)getResult
{
    CGFloat result = 0;
    if (self.numberB == 0)
    {
        [SVProgressHUD showWithStatus:@"除数不能为0"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [SVProgressHUD dismiss];
        });
    }
    result = self.numberA / self.numberB;
    return result;
}
@end
