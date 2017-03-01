//
//  GPOperateUSer.h
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPSQLUser.h"

@interface GPOperateUSer : NSObject

-(void)insertUser:(GPSQLUser *)user;
-(GPSQLUser *)getUser;

@end
