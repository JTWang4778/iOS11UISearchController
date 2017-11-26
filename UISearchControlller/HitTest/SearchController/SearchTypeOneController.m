//
//  SearchTypeOneController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/24.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "SearchTypeOneController.h"
#import "TestViewController.h"

@interface SearchTypeOneController ()<UISearchResultsUpdating,UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,strong)UISearchController *search;

@property (nonatomic,copy)NSString *searchText;

@end

@implementation SearchTypeOneController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"当前控制器展示搜索结果";
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    UISearchController *search = [[UISearchController alloc] initWithSearchResultsController:nil];
    search.searchResultsUpdater = self;
    search.obscuresBackgroundDuringPresentation = NO;
    search.searchBar.barTintColor = [UIColor yellowColor];
//    search.searchBar.barStyle = UIBarStyleBlack;
//    search.searchBar.translucent = YES;
    self.search = search;
    
    /*
        ios8到iOS10的用法，让searchBar作为tableView的headerView 可以看一下设置界面 就是这样的
     */
    
//    self.tableView.tableHeaderView = search.searchBar;
    
    
    self.navigationItem.searchController = self.search;
    self.navigationItem.hidesSearchBarWhenScrolling = NO; // 默认是YES
    
    /*
       1, iOS11之后给navigationItem 新增的两个关于searchController的属性，searchController和whileScroll， 当使用searchController的时候创建好实例后赋值给，然后系统会自动嵌入到导航栏中，这时候设置searchBar的barTinColor已经没有哦作用了 ，他会按照导航栏的barTinColor显示
       2, 如果想让searchBar一直显示可以设置 hidesSearchBarWhenScrolling
        3, 参照系统设置页面的样式，iOS11下最好让searchBar显示到导航栏中，不仅与设置应用保持一致，并且动画效果更佳的好
        4，对于在active状态下，跳转界面的话出现bug的问题，可能是由于searchController显示的时候和普通控制器不一样，所以直接push的话会出现页面显示的问题，我的做法是push之前先让search控制器dismiss
     
     */
}



- (IBAction)didClickSearch:(UIButton *)sender {
    
    if (self.search.active) {
        return;
    }
    [self presentViewController:self.search animated:YES completion:nil];
    
}
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    self.searchText = searchController.searchBar.text;
    [self.tableView reloadData];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"asdfasf"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"asdfasf"];
    }
    if (self.search.active) {
        cell.textLabel.text = self.searchText;
    } else {
        cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    }
    cell.backgroundColor = [UIColor yellowColor];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.search.active = NO;
//    [self.search dismissViewControllerAnimated:NO completion:nil];  这种方式试图切换的时候导航栏里面显示有异常，直接设置active = NO后  显示正常了
    TestViewController *test = [TestViewController new];
    [self.navigationController pushViewController:test animated:YES];
}




@end
