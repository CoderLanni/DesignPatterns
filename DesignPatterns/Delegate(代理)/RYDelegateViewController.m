//
//  RYDelegateViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/7.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYDelegateViewController.h"
#import "RYDelegateSecondViewController.h"

@interface RYDelegateViewController ()<RYTestDelegate>

@property(nonatomic ,strong) UILabel *textLabel;


@end

@implementation RYDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"代理";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(50, 100, 80, 40);
    [btn addTarget:self action:@selector(clickedNextBtn) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:btn];
    
    
    self.textLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 150, 300, 150)];
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.textLabel.backgroundColor = [UIColor yellowColor];;
    [self.view addSubview:self.textLabel];
    
    
    
}


-(void)clickedNextBtn{
    RYDelegateSecondViewController *vc = [[RYDelegateSecondViewController alloc]init];
     vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}


-(void)delegateTestName:(NSString *)name{
    self.textLabel.text = name;
    NSLog(@"传值回来====>>代理");
}

//-(void)demoName:(NSString *)name{
//    self.textLabel.text = name;
//    NSLog(@"传值回来");
//}


@end
