//
//  GPCashContext.h
//  GPDesignMode
//
//  Created by dandan on 17/2/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,cashStyle){
  
    cashNormolStyle = 0,
    cashRebateStyle,
    cashReturnStyle
};

@interface GPCashContext : NSObject
- (instancetype)initWithCashStyle:(cashStyle)cashStyle;
- (NSString *)getResult:(CGFloat)money;
@end
