//
//  GPFMDBUser.m
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPFMDBUser.h"

@implementation GPFMDBUser
-(void)insertUser:(GPSQLUser *)user
{
    NSLog(@"%@--%@",user.name,user.ID);
}
-(GPSQLUser *)getUser
{
    return [[GPSQLUser alloc]initWithFMDBUser];
}
@end
