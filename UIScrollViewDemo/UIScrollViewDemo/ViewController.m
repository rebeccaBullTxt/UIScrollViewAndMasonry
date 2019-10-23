//
//  ViewController.m
//  UIScrollViewDemo
//
//  Created by 刘渊 on 2019/10/23.
//  Copyright © 2019 刘渊. All rights reserved.
//  通过Masonry给UIScrollView设置约束

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [UIScrollView new];
    [self.view addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).mas_equalTo(0);
    }];
    
    UIView *v1 = [UIView new];
    [scrollView addSubview:v1];
    v1.backgroundColor = [UIColor redColor];
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(scrollView).mas_equalTo(0);
        make.centerX.equalTo(scrollView).mas_equalTo(0);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(200);
    }];
    
    UIView *v2 = [UIView new];
    [scrollView addSubview:v2];
    v2.backgroundColor = [UIColor orangeColor];
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(v1.mas_bottom).mas_equalTo(10);
        make.centerX.equalTo(scrollView).mas_equalTo(0);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(400);
    }];
    
    UIView *v3 = [UIView new];
    [scrollView addSubview:v3];
    v3.backgroundColor = [UIColor redColor];
    [v3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(v2.mas_bottom).mas_equalTo(10);
        make.centerX.equalTo(scrollView).mas_equalTo(0);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(300);
        make.bottom.equalTo(scrollView).mas_equalTo(-50);
    }];
}


@end
