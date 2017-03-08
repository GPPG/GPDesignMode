//
//  GPGameRoll.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/8.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPGameRoll.h"
#import "GPRoleStateMemento.h"

@implementation GPGameRoll

- (GPRoleStateMemento *)saveRoleState
{
    GPRoleStateMemento *roleState = [[GPRoleStateMemento alloc]init];
    roleState.life = self.life;
    roleState.attack = self.attack;
    roleState.defense = self.defense;
    return roleState;
}
- (void)recoveryState:(GPRoleStateMemento *)roleState
{
    self.life = roleState.life;
    self.attack = roleState.attack;
    self.defense = roleState.defense;
}

@end
