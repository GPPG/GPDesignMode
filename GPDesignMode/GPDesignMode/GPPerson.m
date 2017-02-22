
//
//  GPPerson.m
//  GPDesignMode
//
//  Created by dandan on 17/2/20.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPPerson.h"

@interface GPPerson()
@property (nonatomic,copy) NSString *name;
@end

@implementation GPPerson

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}
- (void)show
{
    NSLog(@"%@",self.name);
}
@end
