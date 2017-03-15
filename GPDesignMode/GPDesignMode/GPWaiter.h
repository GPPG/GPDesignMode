//
//  GPWaiter.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/15.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPCommand.h"
@interface GPWaiter : NSObject

- (void)setOrder:(GPCommand *)command;
- (void)cancelOrder:(GPCommand *)command;
- (void)notify;

@end
