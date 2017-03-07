//
//  GPElevenViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/7.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPElevenViewController.h"
#import "GPTranslator.h"
#import "GPForwards.h"
#import "GPCenter.h"

@interface GPElevenViewController ()
- (IBAction)AForWardBtnClick:(id)sender;
- (IBAction)CCenterBtnClick:(id)sender;
- (IBAction)ACenterBtnClick:(id)sender;

@end

@implementation GPElevenViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)AForWardBtnClick:(id)sender {
    GPPlayer *aForWard = [[GPForwards alloc]initWithName:@"科比"];
    [aForWard attack];
    [aForWard defense];
}

- (IBAction)CCenterBtnClick:(id)sender {
    
    GPPlayer *cCenter = [[GPTranslator alloc]initWithName:@"小明"];
    [cCenter attack];
    [cCenter defense];
}

- (IBAction)ACenterBtnClick:(id)sender {
    GPPlayer *aCenter = [[GPCenter alloc]initWithName:@"詹姆斯"];
    [aCenter attack];
    [aCenter defense];
}
@end
