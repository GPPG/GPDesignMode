//
//  GPRequest.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPRequest : NSObject

@property(nonatomic, copy) NSString *requestType;

@property(nonatomic, assign) NSInteger number;

@property (nonatomic, copy) NSString *name;

@end
