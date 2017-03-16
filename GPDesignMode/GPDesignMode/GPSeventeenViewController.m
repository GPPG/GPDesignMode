//
//  GPSeventeenViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPSeventeenViewController.h"
#import "GPRequest.h"
#import "GPCommonManager.h"
#import "GPMajordomo.h"
#import "GPGeneralManager.h"

@interface GPSeventeenViewController ()
- (IBAction)qingjiaBtnClick:(id)sender;
- (IBAction)jiaxinOneBtnClick:(id)sender;
- (IBAction)jiaxinTwoBtnClick:(id)sender;
@property (nonatomic, strong) GPCommonManager *jinli;
@end

@implementation GPSeventeenViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    GPCommonManager *jinli = [[GPCommonManager alloc]initWithName:@"部门老大"];
    GPMajordomo *zongjian = [[GPMajordomo alloc]initWithName:@"总监"];
    GPGeneralManager *zhongjingli = [[GPGeneralManager alloc]initWithName:@"总经理"];
    jinli.superior = zongjian;
    zongjian.superior = zhongjingli;
    self.jinli = jinli;
}

- (IBAction)qingjiaBtnClick:(id)sender {
    GPRequest *request = [[GPRequest alloc]init];
    request.name = @"你大爷";
    request.requestType = @"请假";
    request.number = 3;
    [self.jinli requestApplications:request];
}

- (IBAction)jiaxinOneBtnClick:(id)sender {
    GPRequest *request = [[GPRequest alloc]init];
    request.name = @"你大爷";
    request.requestType = @"加薪";
    request.number = 2000;
    [self.jinli requestApplications:request];
}

- (IBAction)jiaxinTwoBtnClick:(id)sender {
    GPRequest *request = [[GPRequest alloc]init];
    request.name = @"你大爷";
    request.requestType = @"加薪";
    request.number = 3000;
    [self.jinli requestApplications:request];
}
@end
