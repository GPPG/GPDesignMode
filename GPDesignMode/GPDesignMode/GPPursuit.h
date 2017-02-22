//
//  GPPursuit.h
//  GPDesignMode
//
//  Created by dandan on 17/2/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPGiveGift.h"
#import "GPGirl.h"

@interface GPPursuit : NSObject<GPGiveGiftDelegate>

- (instancetype)initWithGirl:(GPGirl *)girl;

@end
