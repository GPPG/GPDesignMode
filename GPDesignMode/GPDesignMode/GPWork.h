//
//  GPWork.h
//  GPDesignMode
//
//  Created by dandan on 17/3/2.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GPState;

@interface GPWork : NSObject

@property (nonatomic,assign) NSInteger hour;
@property (nonatomic,assign) BOOL finished;
@property (nonatomic, strong) GPState *state;
-(void)writeProgram;

@end
