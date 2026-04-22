//
//  LLViewController.m
//  LLYogaKit
//
//  Created by liubaoqiu on 04/22/2026.
//  Copyright (c) 2026 liubaoqiu. All rights reserved.
//

#import "LLViewController.h"
#import <LLYogaKit/UIView+Yoga.h>

@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *rootView = self.view;
    CGSize containerSize = rootView.bounds.size;
    rootView.backgroundColor = UIColor.systemBackgroundColor;
    [rootView configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(containerSize.width);
        layout.height = YGPointValue(containerSize.height);
        layout.alignItems = YGAlignCenter;
        layout.justifyContent = YGJustifyCenter;
    }];
    
    UIView *child1 = UIView.new;
    child1.backgroundColor = UIColor.blueColor;
    [child1 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(100);
        layout.height = YGPointValue(100);
        layout.marginBottom = YGPointValue(25);
    }];
    
    [rootView addSubview:child1];
    
    UIView *child2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    child2.backgroundColor = UIColor.greenColor;
    [child2 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.alignSelf = YGAlignFlexEnd;
        layout.width = YGPointValue(200);
        layout.height = YGPointValue(200);
        layout.flexDirection = YGFlexDirectionRow;
    }];
    [rootView addSubview:child2];
    UIView *child21 = UIView.new;
    child21.backgroundColor = UIColor.redColor;
    [child21 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(50);
        layout.height = YGPointValue(50);
    }];
    [child2 addSubview:child21];
    
    UIView *child22 = UIView.new;
    child22.backgroundColor = UIColor.purpleColor;
    [child22 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(50);
        layout.height = YGPointValue(50);
    }];
    [child2 addSubview:child22];
    
    UIView *child3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    child3.backgroundColor = UIColor.yellowColor;
    [child3 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.alignSelf = YGAlignFlexStart;
        layout.width = YGPointValue(100);
        layout.height = YGPointValue(100);
    }];
    [rootView addSubview:child3];
    [rootView.yoga applyLayoutPreservingOrigin:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
