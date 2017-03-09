//
//  GPThirteenViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/9.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPThirteenViewController.h"
#import "GPConcreteCompany.h"
#import "GPHRDepartment.h"
#import "GPFinanceDepartment.h"

@interface GPThirteenViewController ()
- (IBAction)structureBtnClick:(id)sender;
- (IBAction)dutyBtnClick:(id)sender;
@property (nonatomic, strong) GPConcreteCompany *root;
@end

@implementation GPThirteenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.root = [[GPConcreteCompany alloc]initWithName:@"北京总公司"];
    [self.root addCompany:[[GPHRDepartment alloc]initWithName:@"总公司人力资源部"]];
    [self.root addCompany:[[GPFinanceDepartment alloc]initWithName:@"总公司财务部"]];

    GPConcreteCompany *comp = [[GPConcreteCompany alloc]initWithName:@"上海华东分公司"];
    [comp addCompany:[[GPHRDepartment alloc]initWithName:@"华东分公司人力资源部"]];
    [comp addCompany:[[GPFinanceDepartment alloc]initWithName:@"华东分公司财务部"]];
    [self.root addCompany:comp];
    
    GPConcreteCompany *comp1 = [[GPConcreteCompany alloc]initWithName:@"南京办事处"];
    [comp1 addCompany:[[GPHRDepartment alloc]initWithName:@"南京办事处人力资源部"]];
    [comp1 addCompany:[[GPFinanceDepartment alloc]initWithName:@"南京办事处财务部"]];
    [comp addCompany:comp1];
    
    GPConcreteCompany *comp2 = [[GPConcreteCompany alloc]initWithName:@"杭州办事处"];
    [comp2 addCompany:[[GPHRDepartment alloc]initWithName:@"杭州办事处人力资源部"]];
    [comp2 addCompany:[[GPFinanceDepartment alloc]initWithName:@"杭州办事处财务部"]];
    [comp addCompany:comp2];
}
- (IBAction)structureBtnClick:(id)sender { // 结构
    [self.root display:1];
}

- (IBAction)dutyBtnClick:(id)sender { // 职责
    [self.root lineofDuty];
}
@end
