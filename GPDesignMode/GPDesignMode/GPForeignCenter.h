//
//  GPForeignCenter.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/7.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPForeignCenter : NSObject
@property(nonatomic,copy)NSString *name;
- (void)foreignAttact;
- (void)foreignDefent;
-(instancetype)initWithName:(NSString *)name;

@end
