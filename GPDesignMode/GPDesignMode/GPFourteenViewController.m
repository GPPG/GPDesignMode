//
//  GPFourteenViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/11.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPFourteenViewController.h"
#import "GPSingleton.h"

@interface GPFourteenViewController ()
- (IBAction)singletonBtnClick:(id)sender;

@end

@implementation GPFourteenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)singletonBtnClick:(id)sender {
    GPSingleton *singleton1 = [GPSingleton shareTools];
    GPSingleton *singleton2 = [GPSingleton shareTools];
    GPSingleton *singleton3 = [GPSingleton shareTools];

    NSLog(@"1地址:%p--2地址:%p--3地址:%p",singleton1,singleton2,singleton3);
}
@end
