//
//  GPConcreteCompany.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/9.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPConcreteCompany.h"

@interface GPConcreteCompany ()
@property (nonatomic, strong) NSMutableArray *subComanyArray;
@end


@implementation GPConcreteCompany

- (void)addCompany:(GPCompany *)company
{
    [self.subComanyArray addObject:company];
}
- (void)removeCompany:(GPCompany *)company
{
    [self.subComanyArray removeObject:company];
}
- (void)display:(NSInteger)depth
{
    NSString *temStr = @"-";
    NSMutableString *temMutableStr = [NSMutableString string];
    for (int i = 0; i < depth; i ++) {
        [temMutableStr appendString:temStr];
    }
    NSLog(@"%@%@",temMutableStr,self.name);
    for (GPCompany *component in self.subComanyArray) {
        [component display:depth + 2];
    }
}
- (void)lineofDuty
{
    for (GPCompany *component in self.subComanyArray) {
        [component lineofDuty];
    }
}

- (NSMutableArray *)subComanyArray
{
    if (!_subComanyArray) {
        _subComanyArray = [NSMutableArray array];
    }
    return _subComanyArray;
}

@end
