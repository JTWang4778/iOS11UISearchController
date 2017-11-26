//
//  ListViewController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/23.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "ListViewController.h"
#import "DetailViewController.h"

@interface ListViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"列表";
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    /*
        1，iOS11给导航栏新增大标题模式，默认情况下是关闭的，效果的话可以看iOS下系统的设置，文件应用都是大标题模式。
        2，控制是否开启大标题模式的属性是navigationBar的prefersLargeTitles属性， 可以在任何能够拿到navigationBar的地方开启和关闭大标题功能 （代码块）
        3，项目中开启大标题模式后。默认所有带有导航栏的控制器都显示大标题，当然苹果提供了API让每个控制器决定自己是否显示大标题的属性。（代码块）
        4，只有当导航栏开启大标题模式之后，单个控制器设置大标题展示模式才会生效，否则没有意义
     */
    self.view.backgroundColor = [UIColor whiteColor];
    /*
     ///
     默认值就是Automatic，该状态下是否显示大标题依赖于上一个控制器的该属性，如果导航控制器堆栈中最后一个控制器的属性也是Automatic，那么是否显示依赖于navigationBar的prefersLargeTitles属性
     UINavigationItemLargeTitleDisplayModeAutomatic,
     /// 一直显示
     UINavigationItemLargeTitleDisplayModeAlways,
     /// 一直不显示
     UINavigationItemLargeTitleDisplayModeNever,
     */
    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAlways;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"asdfasf"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"asdfasf"];
    }
    cell.textLabel.text = @"点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片点我看图片";
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailViewController *detail = [DetailViewController new];
    detail.imageName = [NSString stringWithFormat:@"%ld", (indexPath.row % 2)];
    [self.navigationController pushViewController:detail animated:YES];
}
@end
