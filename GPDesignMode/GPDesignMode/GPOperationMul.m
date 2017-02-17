//
//  GPOperationMul.m
//  GPDesignMode
//
//  Created by dandan on 17/2/13.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPOperationMul.h"

@implementation GPOperationMul
- (CGFloat)getResult
{
    CGFloat result = 0;
    result = self.numberA * self.numberB;
    return result;
}
@end
