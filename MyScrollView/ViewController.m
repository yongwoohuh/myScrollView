//
//  ViewController.m
//  MyScrollView
//
//  Created by Yongwoo Huh on 2018-01-29.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (nonatomic, strong) MyScrollView *myScrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myScrollView = [[MyScrollView alloc] initWithFrame:CGRectZero];
    self.myScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.myScrollView];
    self.myScrollView.contentSize = CGSizeMake(400, 800);
    
    [self.myScrollView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.myScrollView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.myScrollView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [self.myScrollView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [self.myScrollView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [self.myScrollView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    
    // red view
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = UIColor.redColor;
    [self.myScrollView addSubview:redView];
    
    // green view
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = UIColor.greenColor;
    [self.myScrollView addSubview:greenView];
    
    // blue view
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = UIColor.blueColor;
    [self.myScrollView addSubview:blueView];
    
    // yellow view
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = UIColor.yellowColor;
    [self.myScrollView addSubview:yellowView];
}

@end
