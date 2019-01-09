//
//  RYAdapter.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//
/**
 *Class Name:  适配器
 */
#import <Foundation/Foundation.h>
#import "RYTarget.h"
#import "RYAdaptee.h"

NS_ASSUME_NONNULL_BEGIN

@interface RYAdapter : NSObject<RYTarget>

@property (nonatomic ,strong)RYAdaptee *adaptee;



@end

NS_ASSUME_NONNULL_END
