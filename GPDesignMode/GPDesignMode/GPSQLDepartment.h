//
//  GPSQLDepartment.h
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPSQLDepartment : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *ID;
- (instancetype)initWithFMDBDepartment;
- (instancetype)initWithRealmDepartment;
@end
