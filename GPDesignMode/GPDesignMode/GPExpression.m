//
//  GPExpression.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPExpression.h"
#import "GPPlayContext.h"

@implementation GPExpression
- (void)interpret:(GPPlayContext *)contecxt
{
    if (contecxt.playText.length == 0) {
        return;
    }else{
        
        NSString *playKey = [contecxt.playText substringToIndex:1];
        NSString *plValueStr = [contecxt.playText substringWithRange:NSMakeRange(1, 2)];
        NSInteger plValue = [plValueStr integerValue];
        contecxt.playText = [contecxt.playText substringFromIndex:2];
        [self excute:playKey plValue:plValue];
    }
    
}
- (void)excute:(NSString *)key plValue:(NSInteger)value
{
    
}
@end
