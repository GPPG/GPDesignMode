//
//  GPOneViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/14.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPOneViewController.h"
#import "GPOperationFactory.h"

@interface GPOneViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberALabel;
@property (weak, nonatomic) IBOutlet UITextField *numberBLabel;
@property (weak, nonatomic) IBOutlet UILabel *reusltLabel;
- (IBAction)reslutBtnClick:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *symbolSegment;

@end

@implementation GPOneViewController
#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupView];
}
#pragma mark - 初始化
- (void)setupView
{
    self.view.backgroundColor = GPBGColor;
    
}
#pragma mark - 事件响应
- (IBAction)reslutBtnClick:(UIButton *)sender
{
    if (self.numberALabel.text.length == 0 || self.numberBLabel.text.length == 0 ) {
        [SVProgressHUD showErrorWithStatus:@"请输入数值"];
        return;
    }
    operateStyle operCycle;
    switch (self.symbolSegment.selectedSegmentIndex) {
        case 0:
            operCycle = operateAddStyle;
            break;
        case 1:
            operCycle = operateSubStyle;
            break;
        case 2:
            operCycle = operateMulStyle;
            break;
        case 3:
            operCycle = operateDivStyle;
            break;
        default:
            break;
    }
    GPOperation *operation = [GPOperationFactory createOperate:operCycle];
    operation.numberA = [self.numberALabel.text doubleValue];
    operation.numberB = [self.numberBLabel.text doubleValue];
    self.reusltLabel.text = [NSString stringWithFormat:@"%f",[operation getResult]];
}
#pragma mark - set,get
- (void)setNavTitle:(NSString *)navTitle
{
    self.navigationItem.title = navTitle;
}




@end
