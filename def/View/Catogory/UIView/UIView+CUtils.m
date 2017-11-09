//
//  UIView+CUtils.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "UIView+CUtils.h"

@implementation UIView (CUtils)

+ (UINib *) creatFromXib{
    
    NSString *xibName = NSStringFromClass([self class]);
    
    return [[[NSBundle mainBundle] loadNibNamed:xibName owner:nil options:nil] firstObject];
}

- (UIViewController *) parentVC{
    
    id object = [self nextResponder];
    
    while (![object isKindOfClass:[UIViewController class]]&&object != nil) {
        object = [self nextResponder];
    }
    
    return (UIViewController *) object;
}

- (void)showInWindow{
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    
    self.frame = CGRectMake(0, 0, CGRectGetWidth(window.bounds), CGRectGetHeight(window.bounds));
    
    [window addSubview:self];
}


@end
