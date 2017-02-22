//
//  GPBaseViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPBaseViewController.h"

@interface GPBaseViewController ()

@end

@implementation GPBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = GPBGColor;
}
#pragma mark - set
- (void)setNavTitle:(NSString *)navTitle
{
    self.navigationItem.title = navTitle;
}

@end
