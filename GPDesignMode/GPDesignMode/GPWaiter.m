//
//  GPWaiter.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/15.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPWaiter.h"

@interface GPWaiter()
@property (nonatomic, strong) NSMutableArray *commandArray;

@end

@implementation GPWaiter
- (void)setOrder:(GPCommand *)command
{
    [self.commandArray addObject:command];
}
- (void)cancelOrder:(GPCommand *)command
{
    [self.commandArray removeObject:command];
}
- (void)notify
{
    [self.commandArray enumerateObjectsUsingBlock:^(GPCommand *command, NSUInteger idx, BOOL * _Nonnull stop) {
        [command excuteCommand];
    }];
}

#pragma mark - 懒加载
- (NSMutableArray *)commandArray
{
    if (!_commandArray) {
        _commandArray = [NSMutableArray array];
    }
    return _commandArray;
}
@end
