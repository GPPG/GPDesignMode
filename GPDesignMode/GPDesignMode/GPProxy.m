//
//  GPProxy.m
//  GPDesignMode
//
//  Created by dandan on 17/2/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPProxy.h"

@interface GPProxy()

@property (nonatomic, strong) GPPursuit *pursuit;

@end

@implementation GPProxy

- (instancetype)initWithGirl:(GPGirl *)girl
{
    if (self = [super init]) {
        
        self.pursuit = [[GPPursuit alloc]initWithGirl:girl];
    }
    return self;
}

- (void)giveChocolate
{
    [self.pursuit giveChocolate];
}

- (void)giveFlowers
{
    [self.pursuit giveFlowers];
}

- (void)giveDolls
{
    [self.pursuit giveDolls];
}
@end
