//
//  JKCBaseCollectionViewCell.h
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+CExtention.h"

@interface JKCBaseCollectionViewCell : UICollectionViewCell

/**
 *  初始化界面数据
 */
- (void) setupInterfaceData:(id)data;

/**
 *  初始化界面
 */
- (void) setupInterface;

/**
 *  设置约束
 */
- (void) setupConstraint;

//计算行高
+ (CGSize) calculateCellSize:(id)data;

@end
