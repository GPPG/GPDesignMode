//
//  GPOperationFactory.m
//  GPDesignMode
//
//  Created by dandan on 17/2/13.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPOperationFactory.h"


@implementation GPOperationFactory

+ (GPOperation *)createOperate:(operateStyle)operateStyle
{
    GPOperation *operation;
    
    switch (operateStyle) {
        case operateAddStyle:
            operation = [[GPOperationAdd alloc]init];
            break;
        case operateSubStyle:
            operation = [[GPOperationSub alloc]init];
            break;
        case operateMulStyle:
            operation = [[GPOperationMul alloc]init];
            break;
        case operateDivStyle:
            operation = [[GPOperAtionDiv alloc]init];
            break;
        default:
            break;
    }
    return operation;
}
@end
