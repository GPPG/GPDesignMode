//
//  GPTwelveViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/8.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPTwelveViewController.h"
#import "GPGameRoll.h"
#import "GPRoleStateCaretaker.h"
#import "GPRoleStateMemento.h"

@interface GPTwelveViewController ()
- (IBAction)beforeBattleBtnClick:(id)sender;
- (IBAction)afterBattleBtnClick:(id)sender;
- (IBAction)fightBtnClick:(id)sender;
@property (nonatomic, strong) GPRoleStateCaretaker *stateCaretaker;
@property (nonatomic, strong) GPGameRoll *role;
@end

@implementation GPTwelveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)beforeBattleBtnClick:(id)sender {
    
    self.role = [[GPGameRoll alloc]init];
    [self.role readRoleState];
    self.stateCaretaker = [[GPRoleStateCaretaker alloc]init];
    self.stateCaretaker.stateMemento = [self.role saveRoleState];
    
}

- (IBAction)afterBattleBtnClick:(id)sender {
    [self.role recoveryState:self.stateCaretaker.stateMemento];
    [self.role readRoleState];
}

- (IBAction)fightBtnClick:(id)sender {
    [self.role fightBoss];
}
@end
