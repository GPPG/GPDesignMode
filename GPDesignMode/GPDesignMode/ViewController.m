//
//  ViewController.m
//  GPDesignMode
//
//  Created by dandan on 17/2/13.
//  Copyright © 2017年 dandan. All rights reserved.
//

#import "ViewController.h"
#import "GPOneViewController.h"
#import "GPTwoViewController.h"
#import "GPThreeViewController.h"
#import "GPFourViewController.h"
#import "GPFiveViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *rootTableView;
@property (nonatomic, strong) NSArray *titleArray;
@property (nonatomic, strong) NSArray *subVcArray;
@end

@implementation ViewController
static NSString * const oneCellID = @"oneCellID";
#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNav];
    [self addView];
    [self regisCell];
}
#pragma mark - 初始化方法
- (void)setNav
{
    self.navigationItem.title = @"大话设计模式";
}
- (void)addView
{
    [self.view addSubview:({
        self.rootTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        self.rootTableView.backgroundColor = GPBGColor;
        self.rootTableView.delegate = self;
        self.rootTableView.dataSource = self;
        self.rootTableView.rowHeight = SCREEN_HEIGHT * 0.12;
        self.rootTableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 1)];
        self.rootTableView;
    })];
}
- (void)regisCell
{
    [self.rootTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:oneCellID];
}
#pragma mark - 表格数据源
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titleArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *oneCell = [tableView dequeueReusableCellWithIdentifier:oneCellID];
    oneCell.backgroundColor = GPBGColor;
    oneCell.textLabel.text = self.titleArray[indexPath.row];
    return oneCell;
}
#pragma mark - 表格代理
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *tempVc =  SBVC(self.subVcArray[indexPath.row]);
    tempVc.navTitle = self.titleArray[indexPath.row];
    [self.navigationController pushViewController:tempVc animated:YES];
}
#pragma mark - 懒加载
- (NSArray *)titleArray
{
    if (!_titleArray) {
        _titleArray = @[@"01--简单工厂模式",@"02--策略模式",@"03--装饰模式",@"04--代理模式",@"05--工厂模式"];
    }
    return _titleArray;
}
#pragma mark - 懒加载
- (NSArray *)subVcArray
{
    if (!_subVcArray) {
        
        _subVcArray = @[[GPOneViewController class],[GPTwoViewController class],[ GPThreeViewController class],[GPFourViewController class],[GPFiveViewController class]];
    }
    return _subVcArray;
}

@end
