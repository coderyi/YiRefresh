# YiRefresh
下拉刷新，大道至简，最简单的网络刷新


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

