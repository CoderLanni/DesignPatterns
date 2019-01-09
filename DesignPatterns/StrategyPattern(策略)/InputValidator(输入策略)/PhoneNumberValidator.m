//
//  PhoneNumberValidator.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/9.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "PhoneNumberValidator.h"

@implementation PhoneNumberValidator

- (BOOL)validateInput:(UITextField *)input {
    
    if (input.text.length <= 0) {
        self.errorMessage = @"手机号没有输入";
    } else {
        if (input.text.length == 11 ) {
             self.errorMessage = nil;
        } else {
             self.errorMessage = @"请输入正确的手机号码";
        }
    }
    return self.errorMessage == nil ? YES : NO;
}

@end
