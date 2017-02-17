//
//  GPCashRebate.m
//  GPDesignMode
//
//  Created by dandan on 17/2/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPCashRebate.h"

@interface GPCashRebate()
@property (nonatomic, assign) CGFloat rebatecash;

@end
@implementation GPCashRebate
- (instancetype)initWithRebateCash:(CGFloat)rebatecash
{
    if (self = [super init]) {
        self.rebatecash = rebatecash;
    }
    return self;
}

- (CGFloat)algorithmInterfaqce:(CGFloat)cash
{
    return cash * self.rebatecash;
}
@end
