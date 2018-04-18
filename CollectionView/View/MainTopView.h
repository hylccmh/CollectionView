//
//  SecondMainTopView.h
//  FillColor
//
//  Created by huyunlong on 2018/2/7.
//  Copyright © 2018年 huyunlong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^userSelectedMainClassBlock)(int index);

@interface MainTopView : UIView

@property (nonatomic, strong) NSArray *dataArr;
@property (nonatomic, strong) UICollectionView *myCollection;
@property (nonatomic, strong) UIImageView *coverImgView;
@property (nonatomic, copy) userSelectedMainClassBlock userSelectedMianClass;

- (instancetype)initWithItemSize:(float)itemSize lineSpacing:(float)lineSpacing;
- (void)makeData:(NSArray *)dataArr;


@end
