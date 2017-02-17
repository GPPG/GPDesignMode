
//
//  GPCashContext.m
//  GPDesignMode
//
//  Created by dandan on 17/2/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPCashContext.h"
#import "GPStrategy.h"
#import "GPCashNormal.h"
#import "GPCashRebate.h"
#import "GPCashReturn.h"

@interface GPCashContext()
@property (nonatomic,strong) GPStrategy *cashStrategy;
@end
@implementation GPCashContext

- (instancetype)initWithCashStyle:(cashStyle)cashStyle
{
    if (self = [super init]) {
        
        switch (cashStyle) {
            case cashNormolStyle:
                self.cashStrategy = [[GPCashNormal alloc]init];
                break;
            case cashRebateStyle:
                self.cashStrategy = [[GPCashRebate alloc]initWithRebateCash:0.8];
                break;
            case cashReturnStyle:
                self.cashStrategy = [[GPCashReturn alloc]initWithReturnCash:20];
                break;
            default:
                break;
        }
    }
    return self;
}
- (NSString *)getResult:(CGFloat)money
{
    return [NSString stringWithFormat:@"%f",[self.cashStrategy algorithmInterfaqce:money]];
}

@end
