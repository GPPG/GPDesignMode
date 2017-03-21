//
//  GPUnitedNationsSecurityCouncil.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPUnitedNationsSecurityCouncil.h"

@interface GPUnitedNationsSecurityCouncil()


@end

@implementation GPUnitedNationsSecurityCouncil

- (void)declare:(NSString *)message country:(GPCountry *)colleague
{
    if ([colleague isMemberOfClass:[GPUSA class]]) {
        
        [self.iraq getMessage:message];
    }else{
        [self.usa getMessage:message];
    }
}
@end
