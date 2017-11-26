//
//  ViewController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/13.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "ViewController.h"
#import "HitButton.h"
#import "TestViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"首页";
//    UIButton *bgButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    bgButton.backgroundColor = [UIColor blueColor];
//    [bgButton addTarget:self action:@selector(didClickBgButton:) forControlEvents:UIControlEventTouchUpInside];
//    bgButton.frame = CGRectMake(0, 0, 200, 200);
//    [self.view addSubview:bgButton];
//
//    // 拓展的点击范围是在 可响应的范围内拓展   如果拓展的范围超出父控件  就不能响应了 如果想能够点击就要重写父控件默认的相应方法  作出相应的调整
//    HitButton *button = [[HitButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    button.backgroundColor = [UIColor grayColor];
//    [button addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
//    [bgButton addSubview:button];
//    button.expandInsets = UIEdgeInsetsMake(10, 10, 10, 100);
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear: animated];
}

- (void)didClickBgButton: (UIButton *)sender{
    NSLog(@"点击了背景");
}

- (void)didClickButton: (UIButton   *)sedner {
    NSLog(@"你点哦");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
