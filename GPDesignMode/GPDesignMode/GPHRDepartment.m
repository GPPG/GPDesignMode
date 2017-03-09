//
//  GPHRDepartment.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/9.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPHRDepartment.h"

@implementation GPHRDepartment


- (void)display:(NSInteger)depth
{
    NSString *temStr = @"-";
    NSMutableString *temMutableStr = [NSMutableString string];
    for (int i = 0; i < depth; i ++) {
        [temMutableStr appendString:temStr];
    }
    NSLog(@"%@%@",temMutableStr,self.name);
}

- (void)lineofDuty
{
    NSLog(@"%@ 员工招聘培训管理",self.name);
}

@end
