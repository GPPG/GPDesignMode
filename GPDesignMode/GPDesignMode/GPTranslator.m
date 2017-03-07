//
//  GPTranslator.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/7.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPTranslator.h"

#import "GPForeignCenter.h"

@interface GPTranslator()
@property (nonatomic, strong) GPForeignCenter *foreignCenter;
@end

@implementation GPTranslator
- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.foreignCenter = [[GPForeignCenter alloc]initWithName:name];
    }
    return self;
}

-(void)attack
{
    [self.foreignCenter foreignAttact];
}

- (void)defense
{
    [self.foreignCenter foreignDefent];
}
@end
