
//
//  GPTwentyViewController.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPTwentyViewController.h"
#import "GPScale.h"
#import "GPNote.h"
#import "GPExpression.h"
#import "GPPlayContext.h"

@interface GPTwentyViewController ()
- (IBAction)playBtnClick:(id)sender;

@end

@implementation GPTwentyViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)playBtnClick:(id)sender {
    
    GPPlayContext *playContext = [[GPPlayContext alloc]init];
    NSLog(@"上海滩");
    playContext.playText = @"O2E1G1A3E1G1D3E1G1A1O3C1O2A1G1C1E1D3";
    GPExpression *expression;
    while (playContext.playText.length > 0) {
        NSString *str = [playContext.playText substringToIndex:1];
        
        if ([str isEqualToString:@"O"]) {
            expression = [[GPScale alloc]init];
        }else{
            expression = [[GPNote alloc]init];
        }
        [expression interpret:playContext];
    }    
}
@end
