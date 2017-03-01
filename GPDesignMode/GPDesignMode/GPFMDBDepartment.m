//
//  GPFMDBDepartment.m
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPFMDBDepartment.h"

@implementation GPFMDBDepartment
-(void)insertDepartment:(GPSQLDepartment *)department
{
    NSLog(@"%@--%@",department.name,department.ID);
}
-(GPSQLDepartment *)getDepartment
{
    return [[GPSQLDepartment alloc]initWithFMDBDepartment];
}
@end
