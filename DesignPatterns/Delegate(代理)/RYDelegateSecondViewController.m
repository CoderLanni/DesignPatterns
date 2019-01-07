//
//  RYDelegateSecondViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/7.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYDelegateSecondViewController.h"
#import "RYDelegateThirdViewController.h"



@interface RYDelegateSecondViewController ()



@end

@implementation RYDelegateSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"代理二";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"代理方法" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(50, 100, 80, 40);
    [btn addTarget:self action:@selector(clickedDeleBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    UIButton *sikbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [sikbtn setTitle:@"跳转下一页" forState:UIControlStateNormal];
    [sikbtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    sikbtn.frame = CGRectMake(150, 150, 100, 40);
    [sikbtn addTarget:self action:@selector(clickedNextBtn) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:sikbtn];
    
   
    
}

-(void)clickedDeleBtn{
    NSLog(@"代理");
    //要传递的对象
    NSString *myText = @"这是代理传的值";
    if ([self.delegate respondsToSelector:@selector(delegateTestName:)]) {
        [self.delegate delegateTestName:myText];
    }
    
//        //要传递的对象
//        NSString *myText = @"这是代理传的值";
//        if ([self.delegate respondsToSelector:@selector(demoName:)]) {
//            [self.delegate demoName:myText];
//        }
    
//    [self.navigationController popViewControllerAnimated:YES];

}



-(void)clickedNextBtn{
    RYDelegateThirdViewController *vc = [[RYDelegateThirdViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
