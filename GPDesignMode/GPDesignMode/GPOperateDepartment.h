//
//  GPOperateDepartment.h
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPSQLDepartment.h"

@interface GPOperateDepartment : NSObject

-(void)insertDepartment:(GPSQLDepartment *)department;
-(GPSQLDepartment *)getDepartment;

@end
