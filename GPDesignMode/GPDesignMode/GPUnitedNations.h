//
//  GPUnitedNations.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>


@class GPCountry;

@interface GPUnitedNations : NSObject
- (void)declare:(NSString *)message country:(GPCountry *)colleague;
@end
