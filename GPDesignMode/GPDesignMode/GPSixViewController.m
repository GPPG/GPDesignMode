//
//  GPSixViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPSixViewController.h"
#import "GPResume.h"


@interface GPSixViewController ()
- (IBAction)oneBtnCLick:(id)sender;
- (IBAction)twoBtnClick:(id)sender;
- (IBAction)threeBtnClick:(id)sender;

@property (nonatomic, strong) GPResume *a;
@end

@implementation GPSixViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

// 入门
- (IBAction)oneBtnCLick:(id)sender {
    GPResume *a = [[GPResume alloc]initWithName:@"杨过"];
    self.a = a;
    [a setPersonalInfo:@"25" sex:@"男"];
    [a setworkExperience:@"2000 - 2010" company:@"全真派"];
    [a disPlay];
}
// 结丹
- (IBAction)twoBtnClick:(id)sender {
    GPResume *b = [self.a clone];
    [b setworkExperience:@"2010 - 2015" company:@"古墓派"];
    [b disPlay];
}
// 元婴
- (IBAction)threeBtnClick:(id)sender {
    GPResume *c = [self.a clone];
    [c setworkExperience:@"2015 - 至今" company:@"江湖"];
    [c disPlay];

}
@end
