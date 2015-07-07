//
//  ViewController.m
//  YiRefresh
//
//  Created by coderyi on 15/3/5.
//  Copyright (c) 2015年 coderyi. All rights reserved.
//

#import "ViewController.h"

#import "TableViewController.h"
#import "CollectionViewController.h"
#import "WebViewController.h"
@interface ViewController ()

@end

@implementation ViewController
#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if (iOS7) {
        self.edgesForExtendedLayout = UIRectEdgeBottom | UIRectEdgeLeft | UIRectEdgeRight;
       
    }
    self.title=@"YiRefresh";
    self.view.backgroundColor=[UIColor whiteColor];
    
//    按钮点击进入 tableView刷新演示 页面
    UIButton *buttonTable=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:buttonTable];
    buttonTable.frame=CGRectMake((WScreen-230)/2, 70, 230, 45);
    NSLog(@"%f",WScreen);
    [buttonTable addTarget:self action:@selector(tableAction) forControlEvents:UIControlEventTouchUpInside];
    [buttonTable setTitle:@"tableView刷新演示" forState:UIControlStateNormal];
    [buttonTable setBackgroundColor:[UIColor colorWithRed:0.24f green:0.72f blue:0.17f alpha:1.00f]];
    buttonTable.layer.cornerRadius=6;
    
//    按钮点击进入 collectionView刷新演示 页面
    
    UIButton *buttonCollection=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:buttonCollection];
    buttonCollection.frame=CGRectMake((WScreen-230)/2,200, 230, 45);
    [buttonCollection addTarget:self action:@selector(collectionAction) forControlEvents:UIControlEventTouchUpInside];
    [buttonCollection setTitle:@"collectionView刷新演示" forState:UIControlStateNormal];
    [buttonCollection setBackgroundColor:[UIColor colorWithRed:0.00f green:0.38f blue:0.77f alpha:1.00f]];
    buttonCollection.layer.cornerRadius=6;

    
    //    按钮点击进入 webView刷新演示 页面
    
    UIButton *buttonWeb=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:buttonWeb];
    buttonWeb.frame=CGRectMake((WScreen-230)/2,330, 230, 45);
    [buttonWeb addTarget:self action:@selector(webAction) forControlEvents:UIControlEventTouchUpInside];
    [buttonWeb setTitle:@"webView刷新演示" forState:UIControlStateNormal];
    [buttonWeb setBackgroundColor:[UIColor colorWithRed:0.17 green:0.72 blue:0.67 alpha:1]];
    buttonWeb.layer.cornerRadius=6;
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Actions

-(void)tableAction{
    TableViewController *table=[[TableViewController alloc] init];
    [self.navigationController pushViewController:table animated:YES];
    
}
-(void)collectionAction{
    CollectionViewController *collection=[[CollectionViewController alloc] init];
    [self.navigationController pushViewController:collection animated:YES];
    
}

-(void)webAction{
    WebViewController *web=[[WebViewController alloc] init];
    [self.navigationController pushViewController:web animated:YES];
    
}



@end
