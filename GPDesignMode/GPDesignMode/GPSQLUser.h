//
//  GPSQLUser.h
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPSQLUser : NSObject
@property (nonatomic,copy) NSString *ID;
@property (nonatomic,copy) NSString *name;
- (instancetype)initWithFMDBUser;
- (instancetype)initWithRealmUser;
@end
