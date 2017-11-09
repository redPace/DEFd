//
//  UICollectionViewCell+CUtils.h
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (CUtils)

/**
 复用ID

 @return <#return value description#>
 */
+ (NSString *) reuseIdentifier;

/**
 视图

 @return <#return value description#>
 */
+ (UINib *) nib;


@end
