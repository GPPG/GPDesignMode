//
//  GPWorkExperience.m
//  GPDesignMode
//
//  Created by dandan on 17/2/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPWorkExperience.h"

@implementation GPWorkExperience
- (id)clone
{
    return [self copy];
}
- (id)copyWithZone:(NSZone *)zone
{
    GPWorkExperience *copyExperience = [[GPWorkExperience alloc]init];
    copyExperience.workDate = self.workDate;
    copyExperience.company = self.company;
    return copyExperience;
}
@end
