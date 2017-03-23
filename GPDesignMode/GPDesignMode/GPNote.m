//
//  GPNote.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPNote.h"

@interface GPNote()
@property (nonatomic, strong) NSDictionary *noteDic;

@end

@implementation GPNote
- (void)excute:(NSString *)key plValue:(NSInteger)value
{
    NSString *note = self.noteDic[key];
    NSLog(@"%@",note);
}
- (NSDictionary *)noteDic
{
    if (!_noteDic) {
        _noteDic = @{
                     @"C" : @"1",
                     @"D" : @"2",
                     @"E" : @"3",
                     @"F" : @"4",
                     @"G" : @"5",
                     @"A" : @"6",
                     @"B" : @"7",
                     };
    }
    return _noteDic;
}

@end
