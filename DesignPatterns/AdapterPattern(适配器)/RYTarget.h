//
//  RYTarget.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//
/**
 *Class Name:  目标代理协议
 */
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RYTarget <NSObject>

@required   //必要的
-(void)speakName;

@end

NS_ASSUME_NONNULL_END
