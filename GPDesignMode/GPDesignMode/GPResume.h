//
//  GPResume.h
//  GPDesignMode
//
//  Created by dandan on 17/2/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPPrototype.h"
#import "GPWorkExperience.h"

@interface GPResume : GPPrototype<NSCopying>
- (instancetype)initWithName:(NSString *)name;
- (void)setPersonalInfo:(NSString *)age sex:(NSString *)sex;
- (void)setworkExperience:(NSString *)workDate company:(NSString *)company;
- (void)disPlay;
@end
