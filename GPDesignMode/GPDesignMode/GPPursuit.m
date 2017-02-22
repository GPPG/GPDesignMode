//
//  GPPursuit.m
//  GPDesignMode
//
//  Created by dandan on 17/2/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPPursuit.h"

@interface GPPursuit()

@property (nonatomic,strong) GPGirl *girl;

@end

@implementation GPPursuit

- (instancetype)initWithGirl:(GPGirl *)girl
{
    if (self = [super init]) {
        self.girl = girl;
    }
    return self;
}

- (void)giveDolls
{
    NSLog(@"送给%@洋娃娃",self.girl.name);
}

- (void)giveFlowers
{
    NSLog(@"送给%@花",self.girl.name);
}

- (void)giveChocolate
{
    NSLog(@"送给%@德芙",self.girl.name);
}
@end
