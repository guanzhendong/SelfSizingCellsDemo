//
//  ViewController.m
//  SelfSizingCellsDemo
//
//  Created by ec on 2019/1/18.
//  Copyright © 2019年 gzd. All rights reserved.
//

#import "ViewController.h"
#import "AutoHeightTableViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *tableData;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    

    _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.estimatedRowHeight = 80;
    [self.view addSubview:_tableView];
    [_tableView registerNib:[UINib nibWithNibName:@"AutoHeightTableViewCell" bundle:nil] forCellReuseIdentifier:@"AutoHeightTableViewCell"];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.tableData = @[@"奥运会开幕",
                       @"保护热狗家努热高科技挖拿出飞机返回而光辉腐恶日不能进入柯尼卡",
                       @"拗不过今年本科生找你废物和复古忽然很尴尬入耳加款卡部分的结合部格瑞格局妇女科技格瑞格局妇女科技复核加入别",
                       @"班集体入会你不减肥不就认识女方家女儿经济可仍八家户是光和热北京不干胶和让你巨卡被女方就看不上离开是看的撒会玩半年报建设部内分泌大家板价格可能比例和",
                       @"光和热价格可按揭规划日和抗日科技发件人不干胶客人返回孤儿和顾客分别就八个人就好比吧是接口发布个居委会包括部分人基本健康干部进入光和热价格可按揭规划日和抗日科技发件人不干胶客人返回孤儿和顾客分别就八个人就好比吧是接口发布个居委会包括部分人基本健康干部进入"
                       ];
        [self.tableView reloadData];
    });
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AutoHeightTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AutoHeightTableViewCell" forIndexPath:indexPath];
    cell.contentLabel.text = _tableData[indexPath.row % 5];
    cell.subLabel.text = _tableData[4 - indexPath.row % 5];
    return cell;
}


@end
