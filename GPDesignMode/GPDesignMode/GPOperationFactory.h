//
//  GPOperationFactory.h
//  GPDesignMode
//
//  Created by dandan on 17/2/13.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPOperationAdd.h"
#import "GPOperationSub.h"
#import "GPOperationMul.h"
#import "GPOperAtionDiv.h"

typedef NS_ENUM(NSInteger,operateStyle)
{
    operateAddStyle = 0,
    operateSubStyle,
    operateDivStyle,
    operateMulStyle
};
@interface GPOperationFactory : NSObject
+ (GPOperation *)createOperate:(operateStyle)operateStyle;
@end
