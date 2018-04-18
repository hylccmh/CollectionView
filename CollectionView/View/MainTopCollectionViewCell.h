//
//  SecondMainTopCollectionViewCell.h
//  FillColor
//
//  Created by huyunlong on 2018/2/7.
//  Copyright © 2018年 huyunlong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTopCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) UIImageView *imgView;

/**
 创建表格
 
 @param collectionView collectionView
 @param indexPath 索引
 @return 实例
 */
+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath;


@end






