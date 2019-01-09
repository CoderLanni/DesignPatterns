//
//  CustomField.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/9.
//  Copyright © 2019 小毅. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomField : UITextField
//抽象的策略
@property (nonatomic, strong) InputValidator *validator;

/**
 初始化textField
 @param frame frame
 @return 实例对象
 */
- (instancetype)initWithFrame:(CGRect)frame;

/**
 验证输入合法性
 @return 是否合法,不合法,读取InputValidator当中的errorMessage
 */
- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END
