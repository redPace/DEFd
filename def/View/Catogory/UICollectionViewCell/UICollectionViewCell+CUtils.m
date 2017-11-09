//
//  UICollectionViewCell+CUtils.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "UICollectionViewCell+CUtils.h"

@implementation UICollectionViewCell (CUtils)

+ (NSString *) reuseIdentifier{
    
    return NSStringFromClass([self class]);
}

+ (UINib *) nib{
    
    NSString *xibName = [self reuseIdentifier];

    return [UINib nibWithNibName:xibName bundle:[NSBundle mainBundle]];
}

@end
