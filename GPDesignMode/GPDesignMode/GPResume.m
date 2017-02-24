//
//  GPResume.m
//  GPDesignMode
//
//  Created by dandan on 17/2/23.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPResume.h"

@interface GPResume()
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *sex;
@property (nonatomic,copy) NSString *age;
@property (nonatomic, strong) GPWorkExperience *workExperience;
@end

@implementation GPResume

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
        self.workExperience = [[GPWorkExperience alloc]init];
    }
    return self;
}

- (void)setworkExperience:(NSString *)workDate company:(NSString *)company
{
    self.workExperience.company = company;
    self.workExperience.workDate = workDate;
}

- (void)setPersonalInfo:(NSString *)age sex:(NSString *)sex
{
    self.age = age;
    self.sex = sex;
}

- (void)disPlay
{
    NSLog(@"%@--%@--%@",self.name,self.sex,self.age);
    NSLog(@"%@--%@",self.workExperience.company,self.workExperience.workDate);
}
- (id)clone
{
    return [self copy];
}
- (id)copyWithZone:(NSZone *)zone
{
    GPResume *copyResum = [[GPResume alloc]init];
    copyResum.name = self.name;
    copyResum.workExperience = [self.workExperience clone];
    copyResum.age = self.age;
    copyResum.sex = self.sex;
    return copyResum;
}


@end
