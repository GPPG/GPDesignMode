//
//  GPFifteenViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/12.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPFifteenViewController.h"
#import "GPHandSetBrand.h"
#import "GPHandSetBrandXiaoMi.h"
#import "GPHandSetBrandApple.h"
#import "GPhandSetGame.h"
#import "GPHandSetAddRessList.h"

@interface GPFifteenViewController ()
- (IBAction)runSoft:(id)sender;
- (IBAction)appleRunSoft:(id)sender;

@end

@implementation GPFifteenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)runSoft:(id)sender {

    GPHandSetBrandXiaoMi *xiaoMi = [[GPHandSetBrandXiaoMi alloc]init];
    xiaoMi.soft = [[GPhandSetGame alloc]init];
    [xiaoMi runSoft];
    
    xiaoMi.soft = [[GPHandSetAddRessList alloc]init];
    [xiaoMi runSoft];
    
}

- (IBAction)appleRunSoft:(id)sender {
    
    GPHandSetBrandApple *apple = [[GPHandSetBrandApple alloc]init];
    apple.soft = [[GPhandSetGame alloc]init];
    [apple runSoft];
    
    apple.soft = [[GPHandSetAddRessList alloc]init];
    [apple runSoft];
    
}
@end
