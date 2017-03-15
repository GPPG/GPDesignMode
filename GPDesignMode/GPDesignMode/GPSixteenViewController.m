//
//  GPSixteenViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/12.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPSixteenViewController.h"
#import "GPBarbecuer.h"
#import "GPBakeMuttonCommand.h"
#import "GPBakeChickenWingCommand.h"
#import "GPWaiter.h"

@interface GPSixteenViewController ()
- (IBAction)barkMuttonBtnClick:(id)sender;
- (IBAction)barkChickBtnClick:(id)sender;

@end

@implementation GPSixteenViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)barkMuttonBtnClick:(id)sender {
    GPBarbecuer *barbecuer = [[GPBarbecuer alloc]init];
    GPWaiter *waiter = [[GPWaiter alloc]init];
    GPCommand *bakeMuttonCommand = [[GPBakeMuttonCommand alloc]initWithBarbecuer:barbecuer];
    for (int i = 0; i < 100; i ++) {
        [waiter setOrder:bakeMuttonCommand];
    }
    [waiter notify];
}

- (IBAction)barkChickBtnClick:(id)sender {
    GPBarbecuer *barbecuer = [[GPBarbecuer alloc]init];
    GPWaiter *waiter = [[GPWaiter alloc]init];
    GPCommand *bakeChickenCommand = [[GPBakeChickenWingCommand alloc]initWithBarbecuer:barbecuer];
    for (int i = 0; i < 10; i ++) {
        [waiter setOrder:bakeChickenCommand];
    }
    [waiter notify];
}
@end
