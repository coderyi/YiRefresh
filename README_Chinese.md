# YiRefresh
[![Pod Version](http://img.shields.io/cocoapods/v/YiRefresh.svg?style=flat)](http://cocoadocs.org/docsets/YiRefresh/)
[![Pod Platform](http://img.shields.io/cocoapods/p/YiRefresh.svg?style=flat)](http://cocoadocs.org/docsets/YiRefresh/)
[![Pod License](http://img.shields.io/cocoapods/l/YiRefresh.svg?style=flat)](https://opensource.org/licenses/MIT)

a simple way to use pull-to-refresh.

下拉刷新，大道至简，最简单的网络刷新。

采用KVO实现，应用场景可以在UITableView，UICollectionView，UIWebView等。

YiRefresh支持iOS7+，横竖屏切换，支持iPhone和iPad。

#### Podfile

```ruby
platform :ios, '7.0'
pod "YiRefresh", "~> 0.9.3"
```

头部下拉刷新用法

    refreshHeader=[[YiRefreshHeader alloc] init];
    refreshHeader.scrollView=tableView;
    [refreshHeader header];
    refreshHeader.beginRefreshingBlock=^(){
    };
    [refreshHeader beginRefreshing];
    
底部自动上拉刷新用法

    refreshFooter=[[YiRefreshFooter alloc] init];
    refreshFooter.scrollView=tableView;
    [refreshFooter footer];
    refreshFooter.beginRefreshingBlock=^(){
    };
    
![YiRefresh](http://7u2k5i.com1.z0.glb.clouddn.com/github_yirefreshtable.gif?imageMogr2/thumbnail/370x662!) 
![YiRefresh](http://7u2k5i.com1.z0.glb.clouddn.com/github_yirefreshtable1.gif?imageMogr2/thumbnail/!50p) 



![YiRefresh](http://7u2k5i.com1.z0.glb.clouddn.com/github_yirefreshcollection1.gif?imageMogr2/thumbnail/!50p) 
![YiRefresh](http://7u2k5i.com1.z0.glb.clouddn.com/github_yirefreshcollection2.gif?imageMogr2/thumbnail/!50p) 


copyright (c) 2015 coderyi.all rights reserved.


