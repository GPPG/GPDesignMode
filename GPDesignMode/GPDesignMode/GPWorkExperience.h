//
//  GPWorkExperience.h
//  GPDesignMode
//
//  Created by dandan on 17/2/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPPrototype.h"

@interface GPWorkExperience : GPPrototype<NSCopying>

@property (nonatomic,copy) NSString *company;
@property (nonatomic,copy) NSString *workDate;

@end
