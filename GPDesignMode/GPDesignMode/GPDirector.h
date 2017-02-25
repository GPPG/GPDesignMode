//
//  GPDirector.h
//  GPDesignMode
//
//  Created by dandan on 17/2/24.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPPerSonBuilder.h"

@interface GPDirector : NSObject

- (instancetype)initWithBuilder:(GPPerSonBuilder *)builder;
- (void)createPerson;

@end
