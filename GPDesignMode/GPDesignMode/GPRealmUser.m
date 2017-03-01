//
//  GPRealmUser.m
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPRealmUser.h"

@implementation GPRealmUser

-(void)insertUser:(GPSQLUser *)user
{
    NSLog(@"%@--%@",user.name,user.ID);
}
-(GPSQLUser *)getUser
{
    return [[GPSQLUser alloc]initWithRealmUser];
}
@end
