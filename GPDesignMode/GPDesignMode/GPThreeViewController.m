//
//  GPThreeViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/20.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPThreeViewController.h"
#import "GPPerson.h"
#import "GPFinery.h"
#import "GPTShirts.h"
#import "GPBigTrouser.h"
#import "GPSneakers.h"

@interface GPThreeViewController ()
- (IBAction)btnClick:(id)sender;

@end

@implementation GPThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)btnClick:(id)sender {
    
    GPPerson *person = [[GPPerson alloc]initWithName:@"王二小"];
    GPTShirts *t = [[GPTShirts alloc]init];
    GPBigTrouser *b = [[GPBigTrouser alloc]init];
    GPSneakers *s = [[GPSneakers alloc]init];
    [t setDecorate:person];
    [b setDecorate:t];
    [s setDecorate:b];
    [s show];
}
@end
