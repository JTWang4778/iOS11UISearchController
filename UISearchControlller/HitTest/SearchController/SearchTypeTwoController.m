//
//  SearchTypeTwoController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/24.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "SearchTypeTwoController.h"
#import "SearchResultController.h"

@interface SearchTypeTwoController ()<UISearchResultsUpdating>

@property (nonatomic,strong)UISearchController *search;
@property (nonatomic,strong)SearchResultController *result;
@end

@implementation SearchTypeTwoController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"新的控制器展示搜索结果";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didClickSearch:(UIButton *)sender {
    /*
     1,构造方法，需要传入一个ResultsController， 这个一般是另外一个控制器，如果想让当前控制器作为结果控制器的话 传入nil即可  注意不要把当前控制器 也就是self传入，否则会出现黑屏显示异常。
     2，一个展示搜索结果的代理对象属性 searchResultsUpdater 弱引用， 遵守UISearchResultsUpdating协议 同样可以设置给当前的控制器或者 另外的result控制器，但是如果没有在当前控制器中强引用result控制器的话，代理方法并不会调用。
     3，对于ResultsController是另外一个控制器的时候，点击搜索解决跳转界面是会出现bug(原因是搜索控制器激活的时候显示在所有控制器的上面并且层级关系不同于普通的控制器，如果直接push的话会发现新push的控制器显示在搜索控制器的下面) 发现有解决方法 先把ResultsController给dismiss  然后再push即可
     4,对于创建时传入的控制器一定要和searchResultsUpdater一致，不然崩溃
     */
    SearchResultController *result = [SearchResultController new];
    result.navi = self.navigationController;
    self.result = result;
    UISearchController *search = [[UISearchController alloc] initWithSearchResultsController:nil];
    search.searchResultsUpdater = self;
    
//    search.dimsBackgroundDuringPresentation = NO;  // 默认值是YES 当搜索栏显示的时候添加一个黑色的背景，点击黑色背景可以吧搜索控制器给移除，如果设置为No的话   只能通过点击取消按钮移除搜索控制器
//    search.obscuresBackgroundDuringPresentation = YES; // 这个属性和上一个属性应该是一个作用
//    search.hidesNavigationBarDuringPresentation = NO; // 默认是YES 显示的时候隐藏导航栏
    [self presentViewController:search animated:YES completion:nil];
    //    [self presentSearchController:search];
    //    self.navigationItem.searchController = search;
}

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    
}

@end
