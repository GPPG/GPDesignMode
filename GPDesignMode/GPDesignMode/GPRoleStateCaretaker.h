//
//  GPRoleStateCaretaker.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/8.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GPRoleStateMemento;
@interface GPRoleStateCaretaker : NSObject
@property (nonatomic, strong) GPRoleStateMemento *stateMemento;
@end
