//
//  GPNineViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/3/1.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPNineViewController.h"
#import "GPDataAccess.h"
#import "GPOperateUSer.h"
#import "GPOperateDepartment.h"

@interface GPNineViewController ()
- (IBAction)oneBtnClick:(UIButton *)sender;
- (IBAction)twoBtnClick:(id)sender;
@property (nonatomic, strong) NSArray *typeArray;
@end

@implementation GPNineViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

#pragma mark - 懒加载
- (IBAction)oneBtnClick:(UIButton *)sender {
    
    GPDataAccess *dataAccess = [[GPDataAccess alloc]init];
    dataAccess.operateDepartmentStr = self.typeArray[3];
    GPOperateDepartment *departMent = [dataAccess creatDepartment];
    [departMent insertDepartment:[departMent getDepartment]];
}

- (IBAction)twoBtnClick:(id)sender {
    
    GPDataAccess *dataAccess = [[GPDataAccess alloc]init];
    dataAccess.operateUserStr = self.typeArray[1];
    GPOperateUSer *user = [dataAccess creatUser];
    [user insertUser:[user getUser]];
}

- (NSArray *)typeArray
{
    if (!_typeArray) {
        
        _typeArray = @[@"GPFMDBUser",@"GPRealmUser",@"GPFMDBDepartment",@"GPRealmDepartment"];
    }
    return _typeArray;
}

@end
