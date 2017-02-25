//
//  GPEightViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/24.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPEightViewController.h"
#import "GPDirector.h"
#import "GPPersonThinBuilder.h"
#import "GPPersonFatBuilder.h"

@interface GPEightViewController ()
- (IBAction)fatBtnClick:(id)sender;
- (IBAction)thinBtnClick:(id)sender;

@end

@implementation GPEightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)fatBtnClick:(id)sender {
    GPPersonFatBuilder *fatBuilder = [[GPPersonFatBuilder alloc]init];
    GPDirector *director = [[GPDirector alloc]initWithBuilder:fatBuilder];
    [director createPerson];
}

- (IBAction)thinBtnClick:(id)sender {
    GPPersonThinBuilder *thinBuilder = [[GPPersonThinBuilder alloc]init];
    GPDirector *director = [[GPDirector alloc]initWithBuilder:thinBuilder];
    [director createPerson];
}
@end
