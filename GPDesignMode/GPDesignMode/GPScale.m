//
//  GPScale.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPScale.h"

@implementation GPScale

- (void)excute:(NSString *)key plValue:(NSInteger)value
{
    NSString *scale;
    
    switch (value) {
        case 1:
            scale = @"低音";
            break;
        case 2:
            scale = @"中音";
            break;
        case 3:
            scale = @"高音";
            break;
        default:
            break;
    }
    
    NSLog(@"%@",scale);
    
}

@end
