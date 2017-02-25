//
//  GPDirector.m
//  GPDesignMode
//
//  Created by dandan on 17/2/24.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPDirector.h"

@interface GPDirector()

@property (nonatomic, strong) GPPerSonBuilder *builder;
@end

@implementation GPDirector
- (instancetype)initWithBuilder:(GPPerSonBuilder *)builder
{
    if (self = [super init]) {
        self.builder = builder;
    }
    return self;
}

- (void)createPerson
{
    [self.builder buildHead];
    [self.builder buildHody];
    [self.builder buildArmLeft];
    [self.builder buildArmRight];
    [self.builder buildLegLeft];
    [self.builder buildLeGRight];
}



@end
