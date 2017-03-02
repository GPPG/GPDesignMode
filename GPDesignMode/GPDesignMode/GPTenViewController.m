//
//  GPTenViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/3/2.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPTenViewController.h"
#import "GPWork.h"

@interface GPTenViewController ()
- (IBAction)nBtnClick:(id)sender;

- (IBAction)nnBtnClick:(id)sender;

- (IBAction)nnnBtnClick:(id)sender;

- (IBAction)nnnnBtnClick:(id)sender;

- (IBAction)nnnnnBtnClick:(id)sender;
- (IBAction)nnnnnnBtnClick:(id)sender;

@property (nonatomic, strong) GPWork *work;

@end

@implementation GPTenViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.work = [[GPWork alloc]init];
}


- (IBAction)nBtnClick:(id)sender {
    self.work.hour = 9;
    [self.work writeProgram];
}

- (IBAction)nnBtnClick:(id)sender {
    self.work.hour = 14;
    [self.work writeProgram];
}

- (IBAction)nnnBtnClick:(id)sender {
    self.work.hour = 20;
    [self.work writeProgram];
}

- (IBAction)nnnnBtnClick:(id)sender {
    self.work.hour = 12;
    [self.work writeProgram];
}

- (IBAction)nnnnnBtnClick:(id)sender {
    self.work.hour = 17;
    [self.work writeProgram];
}

- (IBAction)nnnnnnBtnClick:(id)sender {
    self.work.hour = 1;
    [self.work writeProgram];
}
@end
