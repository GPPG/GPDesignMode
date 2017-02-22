//
//  GPFourViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPFourViewController.h"
#import "GPProxy.h"
#import "GPGirl.h"

@interface GPFourViewController ()
- (IBAction)btnClick:(id)sender;

@end

@implementation GPFourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btnClick:(id)sender {
    
    GPGirl *girl = [[GPGirl alloc]init];
    girl.name = @"美女";
    GPProxy *proxy = [[GPProxy alloc]initWithGirl:girl];
    [proxy giveDolls];
    [proxy giveChocolate];
    [proxy giveFlowers];
}
@end
