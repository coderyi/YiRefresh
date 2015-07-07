//
//  TableViewController.m
//  YiRefresh
//
//  Created by coderyi on 15/3/5.
//  Copyright (c) 2015年 coderyi. All rights reserved.
//

#import "TableViewController.h"
#import "YiRefreshHeader.h"
#import "YiRefreshFooter.h"
@interface TableViewController ()<UITableViewDataSource>{

    YiRefreshHeader *refreshHeader;
    YiRefreshFooter *refreshFooter;
    int total;
}

@end

@implementation TableViewController
#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (iOS7) {
        self.edgesForExtendedLayout = UIRectEdgeBottom | UIRectEdgeLeft | UIRectEdgeRight;
        
    }
    self.title=@"tableView刷新演示";
    self.view.backgroundColor=[UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    UITableView *tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, WScreen, HScreen-64) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    tableView.dataSource=self;
  
    
    total=0;
    
    
//    YiRefreshHeader  头部刷新按钮的使用
    refreshHeader=[[YiRefreshHeader alloc] init];
    refreshHeader.scrollView=tableView;
    [refreshHeader header];
    
    refreshHeader.beginRefreshingBlock=^(){
     
        //  后台执行：
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            
            sleep(2);
            
            dispatch_async(dispatch_get_main_queue(), ^{
//               主线程刷新视图
                total=16;
                [tableView reloadData];
            });
           [refreshHeader endRefreshing];
        });
       
    };
    
//    是否在进入该界面的时候就开始进入刷新状态
    
    [refreshHeader beginRefreshing];
    
    
    
    
    

    
//    YiRefreshFooter  底部刷新按钮的使用
    
    refreshFooter=[[YiRefreshFooter alloc] init];
    refreshFooter.scrollView=tableView;
    [refreshFooter footer];
    refreshFooter.beginRefreshingBlock=^(){
        //  后台执行：
        dispatch_async(dispatch_get_global_queue(0, 0), ^{

            sleep(2);
  
            
            dispatch_async(dispatch_get_main_queue(), ^{
        //               主线程刷新视图
//                total=total+16;
                [tableView reloadData];
            });
            [refreshFooter endRefreshing];
        });
        
    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return total;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        
    }
    cell.textLabel.text=[NSString stringWithFormat:@"（%d）君子性非异也，善假于物也！",indexPath.row+1];
    // Configure the cell...
    
    return cell;
}



@end
