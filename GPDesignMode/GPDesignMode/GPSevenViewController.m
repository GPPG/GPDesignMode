//
//  GPSevenViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/24.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPSevenViewController.h"
#import "GPFacade.h"

@interface GPSevenViewController ()
- (IBAction)btnAClcik:(UIButton *)sender;
- (IBAction)btnBClick:(id)sender;

@end

@implementation GPSevenViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)btnAClcik:(UIButton *)sender {
    
    GPFacade *facade = [[GPFacade alloc]init];
    [facade MethodA];
    
}

- (IBAction)btnBClick:(id)sender {
    GPFacade *facade = [[GPFacade alloc]init];
    [facade MethodB];
    
}
@end
