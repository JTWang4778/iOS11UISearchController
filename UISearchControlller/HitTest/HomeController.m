//
//  HomeController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/20.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "HomeController.h"
#import "ListViewController.h"

@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"首页";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClickButton:(UIButton *)sender {
    ListViewController *asdf = [ListViewController new];
    asdf.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:asdf animated:YES];
}

@end
