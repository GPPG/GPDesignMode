//
//  GPCompany.h
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/9.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPCompany : NSObject


@property (nonatomic, copy) NSString *name;

- (void)addCompany:(GPCompany *)company;
- (void)removeCompany:(GPCompany *)company;
- (void)display:(NSInteger)depth;
-(void)lineofDuty;
- (instancetype)initWithName:(NSString *)name;



@end
