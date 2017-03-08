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

- (instancetype)init
{
    if (self = [super init]) {
        self.life = 100;
        self.attack = 100;
        self.defense = 100;
    }
    return self;
}
- (void)readRoleState
{
    NSLog(@"生命值:%ld--攻击力:%ld--防御值:%ld",self.life,self.attack,self.defense);
}
- (void)fightBoss
{
    NSLog(@"被大魔王按在地板上摩擦摩擦");
    self.life = 0;
    self.defense = 0;
    self.attack = 0;
}
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
