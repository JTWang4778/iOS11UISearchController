//
//  MyController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/20.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "MyController.h"
#import "TestViewController.h"
#import "SearchTypeOneController.h"
#import "SearchTypeTwoController.h"

@interface MyController ()

@end

@implementation MyController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UISearchController";
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAlways;
    
    /*
     
     UISearchController在初始化方法方法需要传入一个展示搜索结果的控制器，根据搜索结果的控制器分为两种类型，类型1是用当前控制器作为搜索结果控制器，类型2是使用另外一个新的控制器作为结果控制器。
     */
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    [button1 setTitle:@"搜索类型1" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(didClickType1Button) forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:button1];
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 100, 100)];
    [button2 setTitle:@"搜索类型2" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(didClickType2Button) forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:button2];
    
    // 如果想用非模态的方式使用UISearchController,可以使用UISearchContainerViewController
//    UISearchContainerViewController‘
    /*
     
     UISearchController使用的坑
     1，创建的时候需要传入一个resultController，一般是另外一个控制器，如果想让当前控制器作为结果控制器的话 传入nil即可  注意不要把当前控制器 也就是self传入，否则会出现黑屏显示异常。
     */
    
}

- (void)didClickType1Button{
    SearchTypeOneController *one = [SearchTypeOneController new];
    one.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:one animated:YES];
}

- (void)didClickType2Button{
    SearchTypeTwoController *two = [SearchTypeTwoController new];
    two.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:two animated:YES];
}
@end

