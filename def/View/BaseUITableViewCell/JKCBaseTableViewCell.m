//
//  JKCBaseTableViewCell.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "JKCBaseTableViewCell.h"

@implementation JKCBaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

/**
 *  初始化界面数据
 */
- (void) setupInterfaceData:(id)data{};

/**
 *  初始化界面
 */
- (void) setupInterface{};

/**
 *  设置约束
 */
- (void) setupConstraint{};

//计算行高
+ (CGSize ) calculateCellSize:(id)data{return CGSizeZero;};



@end
