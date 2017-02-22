//
//  GPTwoViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/16.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPTwoViewController.h"
#import "GPCashContext.h"

@interface GPTwoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *oldMoneyTextFiled;
@property (weak, nonatomic) IBOutlet UISegmentedControl *strategySegment;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)countBtnClick:(UIButton *)sender;

@end

@implementation GPTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)countBtnClick:(UIButton *)sender {
    GPCashContext *cashContext;
    switch (self.strategySegment.selectedSegmentIndex) {
        case 0:
            cashContext = [[GPCashContext alloc]initWithCashStyle:cashNormolStyle];
            break;
        case 1:
            cashContext = [[GPCashContext alloc]initWithCashStyle:cashReturnStyle];
            break;
        case 2:
            cashContext = [[GPCashContext alloc]initWithCashStyle:cashRebateStyle];
            break;
        default:
            break;
    }
    
    self.resultLabel.text = [cashContext getResult: [self.oldMoneyTextFiled.text doubleValue]];
}
@end
