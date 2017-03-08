//
//  GPGameRoll.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/8.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GPRoleStateMemento;
@interface GPGameRoll : NSObject

@property (nonatomic, assign) NSInteger life;
@property (nonatomic, assign) NSInteger attack;
@property (nonatomic, assign) NSInteger defense;
- (GPRoleStateMemento *)saveRoleState;
- (void)recoveryState:(GPRoleStateMemento *)roleState;
- (void)readRoleState;
-(void)fightBoss;
@end
