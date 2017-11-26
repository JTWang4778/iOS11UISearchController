
//
//  TestViewController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/14.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "TestViewController.h"
#import "HitButton.h"

@interface TestViewController ()

@property (nonatomic,strong)NSString *name;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"测试";
    
    self.name = @"asd";
//    HitButton *left = [HitButton new];
//    left.frame = CGRectMake(0, 0, 48, 44);
//    left.backgroundColor = [UIColor redColor];
//    [left addTarget:self action:@selector() forControlEvents:]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
