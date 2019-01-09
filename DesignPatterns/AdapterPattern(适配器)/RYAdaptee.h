//
//  RYAdaptee.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//
/**
 *Class Name:  被适配者//源角色//适配者
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RYAdaptee : NSObject

@property (nonatomic, strong)NSString *name;

-(void)sayName;



@end

NS_ASSUME_NONNULL_END
