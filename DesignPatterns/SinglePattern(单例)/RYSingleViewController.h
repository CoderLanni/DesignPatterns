//
//  RYSingleViewController.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//
/**
 *Class Name:  单例
 */
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RYSingleViewController : UIViewController

+(instancetype)sharedLoginHandle;

- (void)printSingle;

@end

NS_ASSUME_NONNULL_END
