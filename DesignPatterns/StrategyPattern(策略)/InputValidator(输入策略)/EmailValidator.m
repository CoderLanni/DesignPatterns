//
//  EmailValidator.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/9.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "EmailValidator.h"

@implementation EmailValidator

- (BOOL)validateInput:(UITextField *)input {
    if (input.text.length <= 0) {
        self.errorMessage = @"邮箱没有输入";
    }
    else{
       self.errorMessage = nil;
    }
    return self.errorMessage == nil ? YES : NO;
}
@end
