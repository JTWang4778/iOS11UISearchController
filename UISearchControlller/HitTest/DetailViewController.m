//
//  DetailViewController.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/23.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"详情";
    
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.largeTitleDisplayMode = 2;
    
    self.imageView.image = [UIImage imageNamed:_imageName];
    self.textView.text = @"肯达尔·詹娜是Bruce Jenner和Kris Jenner的长女，她还有一个妹妹凯莉·詹娜（Kylie Jenner） 2012年，肯达尔·詹娜和妹妹在Sierra Canyon高中上学，还是啦啦队队长。从2012年开始两人已不在学校上学，转为home school[34]  。在闲暇的时候，肯达尔·詹娜喜欢骑马.肯达尔·詹娜 （Kendall Jenner） 是金·卡戴珊 （Kim Kardashian） 同母异父的妹妹（有二分之一血缘关系）。肯达尔·詹娜 （Kendall Jenner） 是Bruce Jenner和Kris Jenner的长女，她还有一个妹妹凯莉·詹娜 （Kylie Jenner） 。[21]  不同于姐姐金·卡戴珊的“前凸后翘”，肯达尔·詹娜的身材更高挑，在2010年一出道就颇受注目。肯达尔·詹娜也是NBA球星奥多姆的小姨子";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
