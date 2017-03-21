//
//  GPUnitedNationsSecurityCouncil.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPUnitedNations.h"
#import "GPUSA.h"
#include "GPIraq.h"

@interface GPUnitedNationsSecurityCouncil : GPUnitedNations
@property (nonatomic, strong) GPUSA *usa;
@property (nonatomic, strong) GPIraq *iraq;
@end
