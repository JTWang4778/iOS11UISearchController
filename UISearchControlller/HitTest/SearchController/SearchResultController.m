//
//  SearchResultController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/23.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "SearchResultController.h"
#import "TestViewController.h"

@interface SearchResultController ()<UISearchResultsUpdating, UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,weak)UITableView *tableView;
@property (nonatomic,copy)NSString *searchText;
@end

@implementation SearchResultController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UITableView *table = [[UITableView alloc] initWithFrame:self.view.bounds];
    table.backgroundColor = [UIColor orangeColor];
    table.delegate = self;
    table.dataSource = self;
    table.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [self.view addSubview:table];
    _tableView = table;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"asdfasf"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"asdfasf"];
    }
    cell.textLabel.text = self.searchText;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    [self dismissViewControllerAnimated:NO completion:nil];
    TestViewController *test = [TestViewController new];
    [self.navi pushViewController:test animated:YES];
}

// Called when the search bar's text or scope has changed or when the search bar becomes first responder.
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    self.searchText = searchController.searchBar.text;
    [self.tableView reloadData];
}

- (void)dealloc{
    NSLog(@"asdf");
}

@end
