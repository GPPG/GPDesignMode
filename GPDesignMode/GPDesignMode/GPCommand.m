//
//  GPCommand.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/15.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPCommand.h"

@implementation GPCommand
- (instancetype)initWithBarbecuer:(GPBarbecuer *)barbecuer
{
    if (self = [super init]) {
        self.barbecuer = barbecuer;
    }
    return self;
}
@end
