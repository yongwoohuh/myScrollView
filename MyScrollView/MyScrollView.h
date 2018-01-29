//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Yongwoo Huh on 2018-01-29.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView
@property (nonatomic, strong) UIPanGestureRecognizer* panGesture;
@property (nonatomic, assign) CGSize contentSize;

- (instancetype)initWithFrame:(CGRect)frame;
- (void)PanGestureHandler:(UIPanGestureRecognizer *)sender;
@end
