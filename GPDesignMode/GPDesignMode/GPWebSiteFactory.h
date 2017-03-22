//
//  GPWebSiteFactory.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/22.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPWebSite.h"

@interface GPWebSiteFactory : NSObject

- (GPWebSite *)getWebSiteCategory:(NSString *)webKey;
- (NSInteger)getWebSiteCount;

@end
