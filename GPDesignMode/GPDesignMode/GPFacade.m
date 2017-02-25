//
//  GPFacade.m
//  GPDesignMode
//
//  Created by dandan on 17/2/24.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPFacade.h"
#import "GPSubSystemOne.h"
#import "GPSubSystemTwo.h"
#import "GPSubSystemThree.h"
#import "GPSubSystemFour.h"


@interface GPFacade()

@property (nonatomic, strong) GPSubSystemOne *one;
@property (nonatomic, strong) GPSubSystemTwo *Two;
@property (nonatomic, strong) GPSubSystemThree *Three;
@property (nonatomic, strong) GPSubSystemFour *Four;

@end

@implementation GPFacade

- (instancetype)init
{
    if (self = [super init]) {
        
        self.one = [[GPSubSystemOne alloc]init];
        self.Two = [[GPSubSystemTwo alloc]init];
        self.Three = [[GPSubSystemThree alloc]init];
        self.Four = [[GPSubSystemFour alloc]init];
    }
    return self;
}

- (void)MethodA
{
    NSLog(@"操作基金 A");
    [self.one buy];
    [self.Two buy];
    [self.Three buy];
    [self.Four buy];
    
}
- (void)MethodB
{
    NSLog(@"操作基金 B");
    [self.one sell];
    [self.Three sell];
    [self.Two buy];
    [self.Four buy];
 
}
@end
