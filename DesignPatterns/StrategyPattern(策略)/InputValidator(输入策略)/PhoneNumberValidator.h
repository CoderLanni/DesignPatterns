//
//  PhoneNumberValidator.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/9.
//  Copyright © 2019 小毅. All rights reserved.
//
/**
 *Class Name:  手机验证策略
 继承输入验证基类
 然后重写输入验证的方法
 */

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhoneNumberValidator : InputValidator

//重载了父类的验证方法
- (BOOL)validateInput:(UITextField *)input;

@end

NS_ASSUME_NONNULL_END
