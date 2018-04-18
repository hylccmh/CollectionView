//
//  SecondMainTopCollectionViewCell.m
//  FillColor
//
//  Created by huyunlong on 2018/2/7.
//  Copyright © 2018年 huyunlong. All rights reserved.
//

#import "MainTopCollectionViewCell.h"
//#import "UIImageView+WebCache.h"

static NSString  * MainTopCollectionViewCellID = @"MainTopCollectionViewCell";
@implementation MainTopCollectionViewCell

/**
 创建表格
 */

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath
{
    MainTopCollectionViewCell *Cell = [collectionView dequeueReusableCellWithReuseIdentifier:MainTopCollectionViewCellID forIndexPath:indexPath];
    
    return Cell;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self)
    {
        [self addView];
    }
    return self;
}

#pragma mark - private

#pragma mark - addView

- (void)addView
{
    [self addSubview:self.imgView];
}

#pragma mark - getter/setter

- (UIImageView *)imgView
{
    if(_imgView == nil)
    {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 70, 78)];
    }
    
    return _imgView;
}

@end

















