//
//  RYSingleViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYSingleViewController.h"

@interface RYSingleViewController ()

@end

@implementation RYSingleViewController
static RYSingleViewController * _instance = nil;
+(instancetype)sharedLoginHandle{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //    loginVC = [[LoginViewController alloc] init];
        _instance= [[self alloc] init];
    });
     return _instance;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)printSingle{
    NSLog(@"使用单例方法");
}



@end
