//
//  GPSQLDepartment.m
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPSQLDepartment.h"

@implementation GPSQLDepartment
- (instancetype)initWithFMDBDepartment
{
    if (self = [super init]) {
        self.name = @"FMDB--Department";
        self.ID = @"1";
    }
    return self;
}

- (instancetype)initWithRealmDepartment
{
    if (self = [super init]) {
        self.name = @"Realm--Department";
        self.ID = @"2";
    }
    return self;
}
@end
