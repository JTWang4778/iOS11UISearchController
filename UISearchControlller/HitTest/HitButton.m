//
//  HitButton.m
//  HitTest
//
//  Created by 王锦涛 on 2017/11/13.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "HitButton.h"

@interface HitButton ()
{
    CGRect _hitFrame;
}
@end

@implementation HitButton

- (void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    _hitFrame = frame;
}

- (void)setExpandInsets:(UIEdgeInsets)expandInsets{
    _expandInsets = expandInsets;
    CGRect frame = self.frame;
    _hitFrame = CGRectMake(frame.origin.x - expandInsets.left, frame.origin.y - expandInsets.top, frame.size.width + expandInsets.left + expandInsets.right, frame.size.height + expandInsets.top + expandInsets.bottom);
}

- (CGRect)hitFrame{
    return _hitFrame;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    if (self.isUserInteractionEnabled == NO || self.isEnabled == NO || self.alpha < 0.1 || self.hidden == YES) {
        return NO;
    }
    CGPoint touchPoint = CGPointMake(self.frame.origin.x + point.x, self.frame.origin.y + point.y);
    NSLog(@"frame = %@, hitFrame = %@, point = %@,%@",NSStringFromCGRect(self.frame),NSStringFromCGRect(self.hitFrame),NSStringFromCGPoint(touchPoint), NSStringFromCGPoint(touchPoint));
    if (CGRectContainsPoint(self.hitFrame, touchPoint)) {
        return YES;
    }
    return NO;
}
@end
