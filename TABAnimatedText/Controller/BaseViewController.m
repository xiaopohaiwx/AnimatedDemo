//
//  BaseViewController.m
//  TABAnimatedText
//
//  Created by wx on 2019/8/30.
//  Copyright © 2019年 wx. All rights reserved.
//

#import "BaseViewController.h"
#import "BaseTableViewCell.h"
#import "BaseModel.h"

@interface BaseViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, assign) NSInteger page;

@end

@implementation BaseViewController
- (NSMutableArray *)dataArr{
    if(!_dataArr){
        _dataArr = [NSMutableArray arrayWithCapacity:1];
    }
    return _dataArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"骨架屏框架测试";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setTableView];
    [self.tableView tab_startAnimationWithCompletion:^{
        [self loadData];
        [self.tableView tab_endAnimationEaseOut];
        [self starAnimationWithTableView:self.tableView];
    }];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
}

- (void)loadData{
    for (NSInteger i = 0; i < 10; ++i) {
        BaseModel *mode = [[BaseModel alloc] init];
        mode.imgName = @"Image";
        mode.content = @"测试数据";
        [self.dataArr addObject:mode];
    }
    [self.tableView.mj_footer endRefreshing];
    [self.tableView.mj_header endRefreshing];
    [self.tableView reloadData];
}

- (void)setTableView{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, kNavbarHeight, kScreenWidth, kScreenHeight - kNavbarHeight) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 0;
    self.tableView.estimatedSectionFooterHeight = 0;
    self.tableView.estimatedSectionHeaderHeight = 0;
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    if (@available(iOS 11.0, *)) {
        self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        [self loadData];
    }];
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self.dataArr removeAllObjects];
        [self loadData];
    }];
    [self.view addSubview:self.tableView];
    // 设置tabAnimated相关属性
    // 可以不进行手动初始化，将使用默认属性
    self.tableView.tabAnimated = [TABTableAnimated animatedWithCellClass:[BaseTableViewCell class]
                                                          cellHeight:180];
    self.tableView.tabAnimated.superAnimationType = TABViewSuperAnimationTypeShimmer;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 180;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *indes = @"cell";
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indes];
    if(cell == nil){
        cell = [[BaseTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indes];
    }
    BaseModel *mode = self.dataArr[indexPath.row];
    [cell setViewWithModel:mode];
    return cell;
}

- (void)starAnimationWithTableView:(UITableView *)tableView {
    [TableViewAnimationKit showWithAnimationType:1 tableView:tableView];
}


@end
