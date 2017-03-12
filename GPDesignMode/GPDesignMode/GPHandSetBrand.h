//
//  GPHandSetBrand.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/12.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPHandSetSoft.h"

@interface GPHandSetBrand : NSObject
@property (nonatomic, strong) GPHandSetSoft *soft;

-(void)runSoft;

@end
