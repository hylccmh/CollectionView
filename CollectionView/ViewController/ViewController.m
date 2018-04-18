//
//  ViewController.m
//  CollectionView
//
//  Created by huyunlong on 2018/2/26.
//  Copyright © 2018年 huyunlong. All rights reserved.
//

#import "ViewController.h"
#import "MainTopView.h"

//屏幕宽高
#define ScreenWidth   [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight  [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@property (nonatomic, strong) MainTopView * mainView;
@property (nonatomic, strong) NSArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.dataArr = [NSArray arrayWithObjects:@"icon_animal",@"icon_character",@"icon_fashion",@"icon_food",@"icon_interest",@"icon_plant",@"icon_scene",@"icon_special day", nil];
    
    self.mainView.userSelectedMianClass = ^(int index) {
      
        NSLog(@"index == %d",index);
    };
    
    [self.view addSubview:self.mainView];
    [self.mainView makeData:self.dataArr];
}

#pragma mark - getter/setter

- (MainTopView *)mainView
{
    if(_mainView == nil)
    {
        _mainView = [[MainTopView alloc] initWithItemSize:70 lineSpacing:5];
        _mainView.frame = CGRectMake(0, (ScreenHeight - 120)/2,ScreenWidth , 120);
    }
    return _mainView;
}

- (NSArray *)dataArr
{
    if(_dataArr == nil)
    {
        _dataArr = [[NSArray alloc] init];
    }
    return _dataArr;
}


@end

















