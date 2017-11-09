//
//  JKCBaseView.h
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+CExtention.h"

@interface JKCBaseView : UIView

/**
 * 初始化对象
 *
 *  @param dataObj  数据结构
 *  @param dicParam 其它数据对象
 *
 *  @return <#return value description#>
 */
+ (instancetype)creat:(id) dataObj param:(NSDictionary *)dicParam;

/**
 *  初始化界面
 */
- (void) setupInterface;

/**
 *  初始化界面数据
 */
- (void) setupInterfaceData;

/**
 *  设置约束
 */
- (void) setupConstraint;

/**
 *  配置界面：界面初始化完毕，约束设置后，界面数据展示
 */
- (void) configInterface;


@end
