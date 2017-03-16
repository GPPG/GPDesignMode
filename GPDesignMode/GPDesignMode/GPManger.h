//
//  GPManger.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GPRequest;
@interface GPManger : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) GPManger *superior;
- (instancetype)initWithName:(NSString *)name;
- (void)requestApplications:(GPRequest *)request;
@end
