//
//  GPCountry.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPCountry.h"

@implementation GPCountry

- (instancetype)initWithMediator:(GPUnitedNations *)mediator
{
    if (self = [super init]) {
        self.mediator = mediator;
    }
    return self;
}

@end
