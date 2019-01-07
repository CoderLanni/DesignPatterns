//
//  RYDelegateThirdViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/7.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYDelegateThirdViewController.h"

@interface RYDelegateThirdViewController ()

@end

@implementation RYDelegateThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"代理3";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"代理方法" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(50, 100, 80, 40);
//    [btn addTarget:self action:@selector(clickedDeleBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    UIButton *sikbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [sikbtn setTitle:@"跳转下一页" forState:UIControlStateNormal];
    [sikbtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    sikbtn.frame = CGRectMake(150, 150, 100, 40);
//    [sikbtn addTarget:self action:@selector(clickedNextBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:sikbtn];
    
}








@end
