//
//  GPDataAccess.m
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPDataAccess.h"
@implementation GPDataAccess

- (GPOperateUSer *)creatUser
{
    return [[NSClassFromString(self.operateUserStr) alloc]init];
}
- (GPOperateDepartment *)creatDepartment
{
    return [[NSClassFromString(self.operateDepartmentStr) alloc]init];
}

@end
