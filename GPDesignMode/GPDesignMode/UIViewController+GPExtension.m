//
//  UIViewController+GPExtension.m
//  GPDesignMode
//
//  Created by dandan on 17/2/14.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "UIViewController+GPExtension.h"

static void *navTitleKey = &navTitleKey;

@implementation UIViewController (GPExtension)
- (void)setNavTitle:(NSString *)navTitle
{
    objc_setAssociatedObject(self, &navTitleKey, navTitle, OBJC_ASSOCIATION_RETAIN);
}
- (NSString *)navTitle
{
    return objc_getAssociatedObject(self, &navTitleKey);
}
@end
