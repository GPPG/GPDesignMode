//
//  GPFiveViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/22.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPFiveViewController.h"
#import "GPStudent.h"
#import "GPVolunteer.h"
#import "GPStudentFactory.h"
#import "GPVolunteerFactory.h"

@interface GPFiveViewController ()
- (IBAction)btlClick:(id)sender;
- (IBAction)VBtnClick:(id)sender;

@end

@implementation GPFiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)btlClick:(id)sender {
    
    GPLFactory *factory = [[GPStudentFactory alloc]init];
    [self action:factory];
}

- (IBAction)VBtnClick:(id)sender {
    GPLFactory *factory = [[GPVolunteerFactory alloc]init];
    [self action:factory];
}

- (void)action:(GPLFactory *)factory
{
    GPLeiFeng *student = [factory creatLeiFeng];
    [student ReadBook];
    [student wash];
    [student bugRice];
    [student sweep];
}

@end
