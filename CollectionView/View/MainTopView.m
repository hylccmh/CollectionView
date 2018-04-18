//
//  SecondMainTopView.m
//  FillColor
//
//  Created by huyunlong on 2018/2/7.
//  Copyright © 2018年 huyunlong. All rights reserved.
//

#import "MainTopView.h"
#import "MainCollectionViewFlowLayout.h"
#import "MainTopCollectionViewCell.h"

//屏幕宽高
#define ScreenWidth   [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight  [[UIScreen mainScreen] bounds].size.height

static NSString * SecondMainTopCollectionViewCellID = @"MainTopCollectionViewCell";

@interface MainTopView () <UICollectionViewDataSource,UIScrollViewDelegate,UICollectionViewDelegate>
{
    float _count;
    MainCollectionViewFlowLayout *_flowLay;
}

@property (nonatomic, assign)  float itemSize;
@property (nonatomic, assign)  float lineSpacing;

@end

@implementation MainTopView

-(instancetype)initWithItemSize:(float)itemSize lineSpacing:(float)lineSpacing
{
    if (self = [super init])
    {
        _lineSpacing = lineSpacing;
        _itemSize = itemSize;
        [self addView];
    }
    return self;
}
#pragma mark - private

- (void)makeData:(NSArray *)dataArr
{
    if([dataArr count] == 0)
    {
        return;
    }
    
    self.dataArr = dataArr;
    [self.myCollection reloadData];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.dataArr.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
  
    MainTopCollectionViewCell *Cell = [MainTopCollectionViewCell cellWithCollectionView:collectionView indexPath:indexPath];
    Cell.imgView.image = [UIImage imageNamed:self.dataArr[[indexPath row]]];
    
    return Cell;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    float contentOffSetX = scrollView.contentOffset.x;
    int index = contentOffSetX / 75;

    if(self.userSelectedMianClass)
    {
        self.userSelectedMianClass(index);
    }
}

#pragma mark - addView

- (void)addView
{
    [self addSubview:self.myCollection];
    [self addSubview:self.coverImgView];
}

#pragma mark - getter/setter

- (UICollectionView *)myCollection
{
    if(_myCollection == nil)
    {
        MainCollectionViewFlowLayout *flowLay = [[MainCollectionViewFlowLayout alloc]init];
        flowLay.itemSize = CGSizeMake(_itemSize, _itemSize);
        flowLay.minimumLineSpacing = _lineSpacing;
        _flowLay = flowLay;
        
         _myCollection = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, 100) collectionViewLayout:flowLay];
         _myCollection.dataSource = self;
        _myCollection.delegate = self;
        _myCollection.backgroundColor = [UIColor clearColor];
        [_myCollection registerClass:[MainTopCollectionViewCell class] forCellWithReuseIdentifier:SecondMainTopCollectionViewCellID];
        _myCollection.showsHorizontalScrollIndicator = NO;
    }
    
    return _myCollection;
}

- (NSArray *)dataArr
{
    if(_dataArr == nil)
    {
        _dataArr = [[NSArray alloc] init];
    }
    
    return _dataArr;
}

- (UIImageView *)coverImgView
{
    if(_coverImgView == nil)
    {
        _coverImgView = [[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth/2 -  72/2, 10, 72, 80)];
        _coverImgView.image = [UIImage imageNamed:@"second_img_selected"];
    }
    
    return _coverImgView;
}




@end








