//
//  HitButton.h
//  HitTest
//
//  Created by 王锦涛 on 2017/11/13.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 可以拓展点击范围的button
 可以在父控件的大小范围内 拓展button的点击大小
 */
@interface HitButton : UIButton

@property (nonatomic,assign)UIEdgeInsets expandInsets;

- (CGRect)hitFrame;

@end
