//
//  GPFinery.m
//  GPDesignMode
//
//  Created by dandan on 17/2/20.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPFinery.h"
#import "GPPerson.h"

@interface GPFinery()

@property (nonatomic, strong) GPPerson *component;

@end

@implementation GPFinery

- (void)setDecorate:(GPPerson *)component
{
    self.component = component;
}

- (void)show
{
    if (self.component != nil) {
        [self.component show];
    }
}

@end
