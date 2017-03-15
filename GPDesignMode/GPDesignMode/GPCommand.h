//
//  GPCommand.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/15.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPBarbecuer.h"

@interface GPCommand : NSObject
@property (nonatomic, strong) GPBarbecuer *barbecuer;
- (void)excuteCommand;
- (instancetype)initWithBarbecuer:(GPBarbecuer *)barbecuer;
@end
