//
//  GPSQLUser.m
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPSQLUser.h"

@implementation GPSQLUser
- (instancetype)initWithFMDBUser
{
    if (self = [super init]) {
        self.name = @"FMDB--User";
        self.ID = @"1";
    }
    return self;
}

- (instancetype)initWithRealmUser
{
    if (self = [super init]) {
        self.name = @"Realm--User";
        self.ID = @"2";
    }
    return self;
}

@end
