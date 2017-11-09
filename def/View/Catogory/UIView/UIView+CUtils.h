//
//  UIView+CUtils.h
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CUtils)

/**
 初始化xib对象

 @return <#return value description#>
 */
+ (UINib *) creatFromXib;

/**
 获取view的视图控制器

 @return <#return value description#>
 */
- (UIViewController *) parentVC;

/**
 在Windows界面显示view
 */
- (void) showInWindow;

@end
