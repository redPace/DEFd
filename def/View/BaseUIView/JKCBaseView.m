//
//  JKCBaseView.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "JKCBaseView.h"

@implementation JKCBaseView

+ (instancetype)creat:(id)dataObj param:(NSDictionary *)dicParam{
    return nil;
};

/**
 *  初始化界面
 */
- (void) setupInterface{};

/**
 *  初始化界面数据
 */
- (void) setupInterfaceData{};

/**
 *  设置约束
 */
- (void) setupConstraint{};

/**
 *  配置界面：界面初始化完毕，约束设置后，界面数据展示
 */
- (void) configInterface{
    [self setupInterface];
    [self setupConstraint];
    [self setupInterfaceData];
};

- (void)dealloc{
    NSLog(@"========>>[%@] %@ 释放成功 <<=========",[self class], self);
};

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
