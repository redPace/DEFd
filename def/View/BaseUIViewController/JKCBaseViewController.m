//
//  JKCBaseViewController.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "JKCBaseViewController.h"

@interface JKCBaseViewController ()

@end

@implementation JKCBaseViewController

+ (instancetype)creatInstanceType:(id)dataObj param:(NSDictionary *)dicParam{
    return nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
