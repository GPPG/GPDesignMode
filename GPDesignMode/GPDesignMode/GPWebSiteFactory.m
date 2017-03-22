//
//  GPWebSiteFactory.m
//  GPDesignMode
//
//  Created by 郭鹏 on 2017/3/22.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "GPWebSiteFactory.h"
#import "GPConcreteWebSite.h"

@interface GPWebSiteFactory()
@property (nonatomic, strong) NSMutableDictionary *flyweightDic;
@end

@implementation GPWebSiteFactory
- (GPWebSite *)getWebSiteCategory:(NSString *)webKey
{
    GPConcreteWebSite *webSite;
    if ([self.flyweightDic.allKeys containsObject:webKey]) {
        webSite = self.flyweightDic[webKey];
    }else{
        webSite = [[GPConcreteWebSite alloc]init];
        webSite.webName = webKey;
        [self.flyweightDic setObject:webSite forKey:webKey];
    }
    return webSite;
}
- (NSInteger)getWebSiteCount
{
    return self.flyweightDic.count;
}
#pragma mark - 懒加载
- (NSMutableDictionary *)flyweightDic
{
    if (!_flyweightDic) {
        _flyweightDic = [NSMutableDictionary dictionary];
    }
    return _flyweightDic;
}
@end
