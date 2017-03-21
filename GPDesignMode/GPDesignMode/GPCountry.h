//
//  GPCountry.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPUnitedNations.h"

@interface GPCountry : NSObject
@property (nonatomic, strong) GPUnitedNations *mediator;
- (instancetype)initWithMediator:(GPUnitedNations *)mediator;
- (void)delare:(NSString *)message;
- (void)getMessage:(NSString *)message;
@end
