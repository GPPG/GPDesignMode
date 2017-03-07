//
//  GPForeignCenter.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/7.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPForeignCenter.h"

@implementation GPForeignCenter

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (void)foreignAttact
{
    NSLog(@"外籍大中锋%@六脉神剑进攻",self.name);
}
- (void)foreignDefent
{
    NSLog(@"外籍大中锋%@太极八卦防御",self.name);
}
@end
