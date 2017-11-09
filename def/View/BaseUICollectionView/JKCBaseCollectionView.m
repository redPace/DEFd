//
//  JKCBaseCollectionView.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "JKCBaseCollectionView.h"

@implementation JKCBaseCollectionView

/**
 *  初始化界面数据
 */
- (void)setupInterfaceData:(id)data{};

/**
 初始化界面数据
 
 @param dataObj <#dataObj description#>
 @param dicParam <#dicParam description#>
 */
- (void) setupInterfaceWithData:(id)dataObj param:(NSDictionary *)dicParam{};


#pragma mark -
#pragma mark ------------- delegate -------------------

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 0;
}

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
}

#pragma mark -
#pragma mark ------------- initView -------------------

- (UICollectionView *) collectionView{
    if (_collectionView) {
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:self.collectionViewLayout];
        
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.bounces = YES;
        _collectionView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
        _collectionView.showsHorizontalScrollIndicator =  NO;
        _collectionView.backgroundColor = [UIColor clearColor];
    }
    
    return _collectionView;
}

- (UICollectionViewLayout *) collectionViewLayout{
    
    if (_collectionViewLayout) {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
        flowLayout.minimumLineSpacing = 0;
        flowLayout.minimumInteritemSpacing = 0;
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        CGFloat W = 0;
        CGFloat H = 0;
        
        flowLayout.itemSize = CGSizeMake(W, H);
        
        _collectionViewLayout = flowLayout;
    }
    
    return _collectionViewLayout;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
