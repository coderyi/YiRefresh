//
//  WebViewController.m
//  YiRefresh
//
//  Created by apple on 15/3/12.
//  Copyright (c) 2015年 coderyi. All rights reserved.
//

#import "WebViewController.h"
#import "YiRefreshHeader.h"
@interface WebViewController ()<UIWebViewDelegate>{
    
    YiRefreshHeader *refreshHeader;
    UIWebView *webView;
    
}
@end
@implementation WebViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([[[UIDevice currentDevice]systemVersion] floatValue] >= 7.0) {
        self.edgesForExtendedLayout = UIRectEdgeBottom | UIRectEdgeLeft | UIRectEdgeRight;
        
    }
    
    self.title=@"webView刷新演示";
    self.view.backgroundColor=[UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    webView=[[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-64)];
    [self.view addSubview:webView];
    webView.delegate=self;

    
    
    
    // YiRefreshHeader  头部刷新按钮的使用
    refreshHeader=[[YiRefreshHeader alloc] init];
    refreshHeader.scrollView=webView.scrollView;
    [refreshHeader header];
    refreshHeader.beginRefreshingBlock=^(){
        [webView loadRequest:[[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"http://www.coderyi.com/"]]];
    };
    
    [refreshHeader beginRefreshing];
    
    
    
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView{

}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [refreshHeader endRefreshing];

}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [refreshHeader endRefreshing];

}
@end
