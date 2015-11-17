# YiRefresh
[![Pod Version](http://img.shields.io/cocoapods/v/YiRefresh.svg?style=flat)](http://cocoadocs.org/docsets/YiRefresh/)
[![Pod Platform](http://img.shields.io/cocoapods/p/YiRefresh.svg?style=flat)](http://cocoadocs.org/docsets/YiRefresh/)
[![Pod License](http://img.shields.io/cocoapods/l/YiRefresh.svg?style=flat)](https://opensource.org/licenses/MIT)

[中文README](https://github.com/coderyi/YiRefresh/blob/master/README_Chinese.md)

a simple way to use pull-to-refresh.

implement by KVO,support UITableView，UICollectionView，UIWebView.

YiRefresh Support iOS7+，horizontal and vertical screen，iPhone and iPad.

#### Podfile

```ruby
platform :ios, '7.0'
pod "YiRefresh", "~> 0.9.5"
```

- [Who Uses YiRefresh](https://github.com/coderyi/YiRefresh/wiki/Who-Uses-YiRefresh)

header drop down to refresh

    refreshHeader=[[YiRefreshHeader alloc] init];
    refreshHeader.scrollView=tableView;
    [refreshHeader header];
    refreshHeader.beginRefreshingBlock=^(){
    };
    [refreshHeader beginRefreshing];
    
footer pull up to refresh

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


