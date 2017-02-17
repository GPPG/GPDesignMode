//
//  GPCashReturn.m
//  GPDesignMode
//
//  Created by dandan on 17/2/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPCashReturn.h"

@interface GPCashReturn()
@property (nonatomic, assign) CGFloat returnCash;
@end
@implementation GPCashReturn
- (instancetype)initWithReturnCash:(CGFloat)returnCash
{
    if (self = [super init]) {
        self.returnCash = returnCash;
    }
    return self;
}
- (CGFloat)algorithmInterfaqce:(CGFloat)cash
{
    return cash - self.returnCash;
}
@end
