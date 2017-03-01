//
//  GPRealmDepartment.m
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPRealmDepartment.h"

@implementation GPRealmDepartment

-(void)insertDepartment:(GPSQLDepartment *)department
{
    NSLog(@"%@--%@",department.name,department.ID);
}
-(GPSQLDepartment *)getDepartment
{
    return [[GPSQLDepartment alloc]initWithRealmDepartment];
}
@end
