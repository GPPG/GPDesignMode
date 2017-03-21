//
//  GPEighteenViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/21.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPEighteenViewController.h"
#import "GPUnitedNationsSecurityCouncil.h"

@interface GPEighteenViewController ()
- (IBAction)onFireBtnClick:(id)sender;

@end

@implementation GPEighteenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)onFireBtnClick:(id)sender {
    GPUnitedNationsSecurityCouncil *nationCouncil = [[GPUnitedNationsSecurityCouncil alloc]init];
    GPUSA *usa = [[GPUSA alloc]initWithMediator:nationCouncil];
    GPIraq *iraq = [[GPIraq alloc]initWithMediator:nationCouncil];
    nationCouncil.usa = usa;
    nationCouncil.iraq = iraq;
    [usa delare:@"不准研发核武器,否则就要打你屁屁"];
    [iraq delare:@"你来呀,你来呀"];
}
@end
