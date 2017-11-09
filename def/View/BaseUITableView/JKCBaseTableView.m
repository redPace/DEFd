//
//  JKCBaseTableView.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "JKCBaseTableView.h"

@implementation JKCBaseTableView

/**
 *  初始化界面数据
 */
- (void)setupInterfaceData:(id)data{};

/**
 初始化界面数据
 
 @param dataObj <#dataObj description#>
 @param dicParam <#dicParam description#>
 */
- (void) setupInterfaceWithData:(id)dataObj param:(NSDictionary *)dicParam{};

#pragma mark -
#pragma mark ------------- delegate -------------------

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return NULL;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 0;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{};

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 0;
}

#pragma mark -
#pragma mark ------------- initView -------------------

- (UITableView *)tableView{
    
    if (_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor whiteColor];
    }
    
    return _tableView;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
