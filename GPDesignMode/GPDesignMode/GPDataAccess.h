//
//  GPDataAccess.h
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPOperateDepartment.h"
#import "GPOperateUSer.h"
#import "GPFMDBUser.h"
#import "GPRealmUser.h"
#import "GPFMDBDepartment.h"
#import "GPRealmDepartment.h"

@interface GPDataAccess : NSObject

@property (nonatomic,copy) NSString *operateUserStr;

@property (nonatomic,copy) NSString *operateDepartmentStr;

- (GPOperateDepartment *)creatDepartment;
- (GPOperateUSer *)creatUser;
@end
