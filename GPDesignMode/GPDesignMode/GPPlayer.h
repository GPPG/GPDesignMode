//
//  GPPlayer.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/7.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPPlayer : NSObject
@property(nonatomic,copy)NSString *name;
- (void)attack;
- (void)defense;
- (instancetype)initWithName:(NSString *)name;
@end
