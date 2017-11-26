//
//  CourseDetailController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/20.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"课程详情";
    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeNever;
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
//    self.additionalSafeAreaInsets = UIEdgeInsetsMake(40, 0, 0, 40);
    //  使用additionalSafeAreaInsets属性可以在安全区域的基础上设置内容的内边距
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"%@, %@, %@",NSStringFromUIEdgeInsets(self.additionalSafeAreaInsets), NSStringFromUIEdgeInsets(self.view.safeAreaInsets),NSStringFromUIEdgeInsets(self.view.layoutMargins));
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"%@, %@, %@",NSStringFromUIEdgeInsets(self.additionalSafeAreaInsets), NSStringFromUIEdgeInsets(self.view.safeAreaInsets),NSStringFromUIEdgeInsets(self.view.layoutMargins));
}

- (void)viewSafeAreaInsetsDidChange{
    [super viewSafeAreaInsetsDidChange];
    NSLog(@"%@, %@, %@",NSStringFromUIEdgeInsets(self.additionalSafeAreaInsets), NSStringFromUIEdgeInsets(self.view.safeAreaInsets),NSStringFromUIEdgeInsets(self.view.layoutMargins));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"asdfasdf"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"asdfasdf"];
    }
    cell.textLabel.text = @"阿斯顿发生的发送 ";
    cell.backgroundColor = [UIColor grayColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
