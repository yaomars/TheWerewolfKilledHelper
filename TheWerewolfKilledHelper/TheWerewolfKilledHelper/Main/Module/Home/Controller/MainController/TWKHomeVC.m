//
//  TWKHomeVC.m
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/27.
//  Copyright © 2018 yinyao. All rights reserved.
//

#import "TWKHomeVC.h"
#import "TWKHomeNormalCell.h"

@interface TWKHomeVC ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

///头部文字集合
@property (strong, nonatomic) NSArray<NSString *> *headerTitleArray;

///狼人数量 - 值的集合
@property (strong, nonatomic) NSArray<NSString *> *werewolvesNumArray;
///村民数量 - 值的集合
@property (strong, nonatomic) NSArray<NSString *> *villagersNumArray;
///解药 - 值的集合
@property (strong, nonatomic) NSArray<NSString *> *antidoteArray;
///毒药 - 值的集合
@property (strong, nonatomic) NSArray<NSString *> *poisonArray;
///守卫 - 值的集合
@property (strong, nonatomic) NSArray<NSString *> *guardsArray;
///白痴 - 值的集合
@property (strong, nonatomic) NSArray<NSString *> *idiotArray;

///第2组 - 第4组的数据集合
@property (strong, nonatomic) NSArray<NSArray<NSDictionary *> *> *normalDataArray;

@end

@implementation TWKHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"开始配置";
    
    //初始化变量
    [self initializeProperty];
    
    //初始化UI
    [self setupUI];
}

- (void)initializeProperty {
    self.headerTitleArray = @[@"神职配置", @"狼人配置", @"村民配置", @"技能配置"];
    
    self.werewolvesNumArray = @[@"1", @"2", @"3", @"4", @"5", @"6"];
    self.villagersNumArray  = @[@"1", @"2", @"3", @"4", @"5", @"6"];
    self.antidoteArray      = @[@"仅第一夜可救", @"可以自救", @"不可自救"];
    self.poisonArray        = @[@"不可与解药同一晚使用", @"可以与解药同一晚使用"];
    self.guardsArray        = @[@"同时被守卫救算死亡", @"同时被守卫救不算死亡"];
    self.idiotArray         = @[@"白痴算平民或神", @"白痴只算神"];
    
    self.normalDataArray = @[
                             @[@{@"name" : @"狼人数量:", @"defaultValue" : _werewolvesNumArray[0]}],
                             @[@{@"name" : @"村民数量:", @"defaultValue" : _villagersNumArray[0]}],
                             @[@{@"name" : @"解药:", @"defaultValue" : _antidoteArray[0]}, @{@"name" : @"毒药:", @"defaultValue" : _poisonArray[0]}, @{@"name" : @"守卫:", @"defaultValue" : _guardsArray[0]}, @{@"name" : @"白痴:", @"defaultValue" : _idiotArray[0]}]
                             ];
}

- (void)setupUI {
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 50.f;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return _normalDataArray.count + 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return 1;
    }
    return _normalDataArray[section - 1].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TWKHomeNormalCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TWKHomeNormalCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 40.f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.001;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 40.f)];
    headerView.backgroundColor = [UIColor colorWithHexString:@"#CCCCCC"];
    
    UILabel *titleLbl = [UILabel new];
    titleLbl.textColor = [UIColor colorWithHexString:@"#222222"];
    titleLbl.font = [UIFont systemFontOfSize:13.f];
    titleLbl.text = _headerTitleArray[section];
    [titleLbl sizeToFit];
    titleLbl.frame = CGRectMake(16.f, 0.5 * (headerView.bounds.size.height - titleLbl.bounds.size.height), titleLbl.bounds.size.width, titleLbl.bounds.size.height);
    
    [headerView addSubview:titleLbl];
    
    return headerView;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    
    return [UIView new];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"didSelectRowAtIndexPath");
}

#pragma mark - getter
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, self.view.frame.size.height)
                                                  style:UITableViewStyleGrouped];
        _tableView.dataSource = self;
        _tableView.delegate   = self;
        [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        _tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        
        [_tableView registerNib:[UINib nibWithNibName:@"TWKHomeNormalCell" bundle:nil] forCellReuseIdentifier:@"TWKHomeNormalCell"];
        
    }
    return _tableView;
}

@end
