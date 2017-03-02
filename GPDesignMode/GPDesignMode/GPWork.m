//
//  GPWork.m
//  GPDesignMode
//
//  Created by dandan on 17/3/2.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPWork.h"
#import "GPForenoonState.h"

@interface GPWork()

@end

@implementation GPWork

- (instancetype)init
{
    if (self = [super init]) {
        self.state = [[GPForenoonState alloc]init];
    }
    return self;
}

-(void)writeProgram
{
    [self.state writeProgram:self];
    
}
@end
