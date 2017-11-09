//
//  JKCBaseNavigationController.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "JKCBaseNavigationController.h"

#define kBackToButtonImage          @""         //返回按钮图片名
#define kBackButtonW                21
#define kBackButtonH                21          //返回按钮size
#define kFontSize                   18.0        //字体大小
#define kTitleColor                 @"#111111"  //字体颜色
#define kTintColor                  @"#666666"  //背景色

@interface JKCBaseNavigationController ()

@end

@implementation JKCBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupInterface];
}

/**
 *  初始化界面
 */
- (void) setupInterface{
    
    self.interactivePopGestureRecognizer.delegate = (id<UIGestureRecognizerDelegate>)self;
    
    [self setupBackButton];
    [self setNavigationBar];
    
};

/**
 设置导航栏背景色，字体
 */
- (void) setNavigationBar{
    
    [UINavigationBar appearance].tintColor = UIColorHex(kTintColor);
    [UINavigationBar appearance].titleTextAttributes = @{NSForegroundColorAttributeName:UIColorHex(kTitleColor),
         NSFontAttributeName:[UIFont boldSystemFontOfSize:kFontSize]};
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    [UINavigationBar appearance].shadowImage = [UIImage new];
}

/**
 设置返回按钮
 */
- (void) setupBackButton{
    
    self.backButton.frame = CGRectMake(0, 0, kBackButtonW, kBackButtonW);
    [self.backButton addTarget:self action:@selector(backToEvent) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc]initWithCustomView:self.backButton];
    
    self.navigationItem.leftBarButtonItem = barButton;
}

/**
 按钮返回方法
 */
- (void) backToEvent{
    if ([self respondsToSelector:@selector(backTo)]) {
        [self backTo];
    }else{
        [self popViewControllerAnimated:YES];
    }
};

/**
 子类实现
 */
- (void) backTo{};

- (void) navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    self.tabBarController.tabBar.hidden = (self.viewControllers.count > 1);
}

#pragma mark -
#pragma mark ------------- initView -------------------

- (UIButton *)backButton{
    if (!_backButton) {
        _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_backButton setImage:[UIImage imageNamed:kBackToButtonImage] forState:UIControlStateNormal];
    }
    
    return _backButton;
}

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
