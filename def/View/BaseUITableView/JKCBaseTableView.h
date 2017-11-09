//
//  JKCBaseTableView.h
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "JKCBaseView.h"

@interface JKCBaseTableView : JKCBaseView<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

/**
 *  初始化界面数据
 */
- (void)setupInterfaceData:(id)data;

/**
 初始化界面数据

 @param dataObj <#dataObj description#>
 @param dicParam <#dicParam description#>
 */
- (void) setupInterfaceWithData:(id)dataObj param:(NSDictionary *)dicParam;


@end
