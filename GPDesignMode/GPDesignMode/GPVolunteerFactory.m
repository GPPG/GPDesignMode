//
//  GPVolunteerFactory.m
//  GPDesignMode
//
//  Created by dandan on 17/2/22.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPVolunteerFactory.h"
#import "GPVolunteer.h"

@implementation GPVolunteerFactory

- (GPLeiFeng *)creatLeiFeng
{
    return [[GPVolunteer alloc]init];
}

@end
