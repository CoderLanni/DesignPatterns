//
//  RYObserverNotificationViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYObserverNotificationViewController.h"

@interface RYObserverNotificationViewController ()

@end

@implementation RYObserverNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"通知";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"代理方法" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(50, 100, 80, 40);
    [btn addTarget:self action:@selector(clickedNotifitionCenterBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
 
    
}


-(void)clickedNotifitionCenterBtn{
    NSLog(@"通知");
    
    NSDictionary *dataDic = [NSDictionary dictionaryWithObject:@"通知值" forKey:@"username"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RegisterCompeletionNotification"
                                                        object:nil
                                                      userInfo:dataDic];
}


@end
