//
//  GPOperation.h
//  GPDesignMode
//
//  Created by dandan on 17/2/13.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GPOperation : NSObject

@property (nonatomic,assign) CGFloat numberA;
@property (nonatomic,assign) CGFloat numberB;
- (CGFloat)getResult;

@end
