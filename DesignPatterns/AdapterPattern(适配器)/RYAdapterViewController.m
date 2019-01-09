//
//  RYAdapterViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYAdapterViewController.h"
#import "RYAdaptee.h"
#import "RYAdapter.h"
#import "RYTarget.h"


@interface RYAdapterViewController ()


@end

@implementation RYAdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.navigationItem.title = @"适配器";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //对象适配器
    RYAdaptee *adaptee = [RYAdaptee new]; //适配源
    RYAdapter *adapter = [RYAdapter new]; //适配器
    adapter.adaptee = adaptee;
    id<RYTarget> target = adapter;
    [target speakName];
}


@end
