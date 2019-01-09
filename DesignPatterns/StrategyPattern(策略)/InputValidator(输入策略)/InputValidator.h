//
//  InputValidator.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/9.
//  Copyright © 2019 小毅. All rights reserved.
//
/**
 *Class Name:  验证策略的基类
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputValidator : NSObject

/**
 策略的输入
 @param input input
 @return 如果为YES,表示测试通过,如果为NO,表示测试不通过
 */
- (BOOL)validateInput:(UITextField *)input;

//当validateInput为NO的时候,我们来读取errorMessage
@property (nonatomic, strong) NSString *errorMessage;

@end

NS_ASSUME_NONNULL_END
