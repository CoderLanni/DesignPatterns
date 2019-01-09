//
//  RYStrategyViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/9.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYStrategyViewController.h"
#import "CustomField.h"
#import "EmailValidator.h"
#import "PhoneNumberValidator.h"

@interface RYStrategyViewController ()  <UITextFieldDelegate>

//输入邮箱的验证框
@property (nonatomic, strong) CustomField  *emailField;

//输入电话号码的验证框
@property (nonatomic, strong) CustomField  *phoneNumberField;

@end

@implementation RYStrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    
    self.navigationItem.title = @"策略";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.emailField             = [[CustomField alloc] initWithFrame:CGRectMake(30, 80, 300, 30)];
    self.emailField.placeholder = @"请输入邮箱";
    self.emailField.delegate    = self;
    self.emailField.validator   = [EmailValidator new];
    [self.view addSubview:self.emailField];
    
    
    self.phoneNumberField             = [[CustomField alloc] initWithFrame:CGRectMake(30, 80 + 40, 300, 30)];
    self.phoneNumberField.placeholder = @"请输入电话号码";
    self.phoneNumberField.delegate    = self;
    self.phoneNumberField.validator   = [PhoneNumberValidator new];
    [self.view addSubview:self.phoneNumberField];
    
}

#pragma mark - 文本框代理
- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    CustomField *customField = (CustomField *)textField;
    
    if ([customField validate] == NO) {
        
        NSLog(@"====================>>>>>>>>>>>>    %@",customField.validator.errorMessage);
    }
}


@end
