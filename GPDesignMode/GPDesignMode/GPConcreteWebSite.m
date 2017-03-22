//
//  GPConcreteWebSite.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/22.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPConcreteWebSite.h"
#import "GPUser.h"

@implementation GPConcreteWebSite
- (void)use:(GPUser *)user
{
    NSLog(@"网站分类:%@--用户:%@",self.webName,user.name);
}
@end
