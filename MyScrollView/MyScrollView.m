//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Yongwoo Huh on 2018-01-29.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@end

@implementation MyScrollView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(PanGestureHandler:)];
       
        [self addGestureRecognizer:self.panGesture];
    }
    return self;
}

 - (void)PanGestureHandler:(UIPanGestureRecognizer *)sender
{
    CGPoint translationInView = [sender translationInView:self];
    CGRect bounds = self.bounds;
    
    CGFloat newBoundsOriginX = bounds.origin.x - translationInView.x;
    CGFloat minBoundsOriginX = 0.0;
    CGFloat maxBoundsOriginX = self.contentSize.width - bounds.size.width;
    bounds.origin.x = fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX));
    
    CGFloat newBoundsOriginY = bounds.origin.y - translationInView.y;
    CGFloat minBoundsOriginY = 0.0;
    CGFloat maxBoundsOriginY = self.contentSize.height - bounds.size.height;
    bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));
    
    self.bounds = bounds;
    [sender setTranslation:CGPointZero inView:self];
    
}

@end
