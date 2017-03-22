
//
//  GPNineteenViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/22.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPNineteenViewController.h"
#import "GPConcreteWebSite.h"
#import "GPWebSiteFactory.h"
#import "GPUser.h"

@interface GPNineteenViewController ()
- (IBAction)webBtnClick:(id)sender;

@end

@implementation GPNineteenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}



- (IBAction)webBtnClick:(id)sender {
    
    
    GPWebSiteFactory *webSiteFactory = [[GPWebSiteFactory alloc]init];
    
    GPWebSite *fx0 = [webSiteFactory getWebSiteCategory:@"练功"];
    GPUser *user0 = [[GPUser alloc]init];
    user0.name = @"风清扬";
    [fx0 use:user0];
    
    GPWebSite *fx1 = [webSiteFactory getWebSiteCategory:@"练功"];
    GPUser *user1 = [[GPUser alloc]init];
    user1.name = @"杨过";
    [fx1 use:user1];
    
    
    
    GPWebSite *fx2 = [webSiteFactory getWebSiteCategory:@"练功"];
    GPUser *user2 = [[GPUser alloc]init];
    user2.name = @"小龙女";
    [fx2 use:user2];
    
    
    GPWebSite *fx3 = [webSiteFactory getWebSiteCategory:@"华山论剑"];
    GPUser *user3 = [[GPUser alloc]init];
    user3.name = @"黄药师";
    [fx3 use:user3];
    
    
    GPWebSite *fx4 = [webSiteFactory getWebSiteCategory:@"华山论剑"];
    GPUser *user4 = [[GPUser alloc]init];
    user4.name = @"洪七公";
    [fx4 use:user4];
    NSLog(@"----------------------------------------------------------------");
    NSLog(@"风清扬:%p--杨过:%p--小龙女:%p--黄药师:%p--洪七公:%p",fx0,fx1,fx2,fx3,fx4);
    
}
@end
