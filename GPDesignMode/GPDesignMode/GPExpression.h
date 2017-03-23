//
//  GPExpression.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GPPlayContext;

@interface GPExpression : NSObject

- (void)interpret:(GPPlayContext *)contecxt;
- (void)excute:(NSString *)key plValue:(NSInteger)value;
@end
