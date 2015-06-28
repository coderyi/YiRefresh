
//
//  CollectionViewController.m
//  YiRefresh
//
//  Created by apple on 15/3/6.
//  Copyright (c) 2015年 coderyi. All rights reserved.
//

#import "CollectionViewController.h"
#import "YiRefreshHeader.h"
#import "YiRefreshFooter.h"
@interface CollectionViewController ()<UICollectionViewDataSource>{
    
    YiRefreshHeader *refreshHeader;
    YiRefreshFooter *refreshFooter;
    
    int total;
}

@end
@implementation CollectionViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (iOS7) {
        self.edgesForExtendedLayout = UIRectEdgeBottom | UIRectEdgeLeft | UIRectEdgeRight;
        
    }
    
    self.title=@"collectionView刷新演示";
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    total=0;
    
    
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    if (WScreen>320) {
        layout.itemSize=CGSizeMake(100, 100);
    }else{
        layout.itemSize=CGSizeMake(80, 80);
        
    }
    [layout setScrollDirection:UICollectionViewScrollDirectionVertical];
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    UICollectionView *collectionView=[[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, WScreen, HScreen-64) collectionViewLayout:layout];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    collectionView.backgroundColor=[UIColor clearColor];
    collectionView.showsVerticalScrollIndicator=NO;
    [collectionView setUserInteractionEnabled:YES];
    collectionView.dataSource=self;
    [self.view addSubview:collectionView];
    
    
    
    
    //    YiRefreshHeader  头部刷新按钮的使用
    refreshHeader=[[YiRefreshHeader alloc] init];
    refreshHeader.scrollView=collectionView;
    self.view.backgroundColor=[UIColor whiteColor];
    
    [refreshHeader header];
    refreshHeader.beginRefreshingBlock=^(){
     
        //  后台执行：
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
       
            sleep(2);
       
            [refreshHeader endRefreshing];
            dispatch_async(dispatch_get_main_queue(), ^{
                //               主线程刷新视图

                                                total=17;
                [collectionView reloadData];
            });
            
        });
        
    };
        [refreshHeader beginRefreshing];
    
    
    
    //    YiRefreshFooter  底部刷新按钮的使用
    
    refreshFooter=[[YiRefreshFooter alloc] init];
    refreshFooter.scrollView=collectionView;
    [refreshFooter footer];
    refreshFooter.beginRefreshingBlock=^(){
   
        //  后台执行：
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            sleep(2);
          
            [refreshFooter endRefreshing];
            dispatch_async(dispatch_get_main_queue(), ^{
                //               主线程刷新视图
                                total=total+17;
                [collectionView reloadData];
            });
            
        });
        
    };
    

}
#pragma mark collectionView
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return total;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    if (indexPath.row%3==0) {
        cell.backgroundColor=[UIColor colorWithRed:0.24f green:0.72f blue:0.17f alpha:1.00f];
    }else if (indexPath.row%3==1){
        cell.backgroundColor=[UIColor colorWithRed:0.22f green:0.50f blue:0.78f alpha:1.00f];

    }else if (indexPath.row%3==2){
        cell.backgroundColor=[UIColor colorWithRed:0.00f green:0.38f blue:0.77f alpha:1.00f];
        
    }
  

    return cell;
    
}

@end
