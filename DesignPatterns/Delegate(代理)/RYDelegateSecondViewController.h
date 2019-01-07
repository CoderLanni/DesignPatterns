//
//  RYDelegateSecondViewController.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/7.
//  Copyright © 2019 小毅. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RYTestDelegate.h"

NS_ASSUME_NONNULL_BEGIN

//
////创建代理协议
//@protocol DemoDelegate <NSObject>
////声明代理方法
//@optional
//- (void)demoName:(NSString *)name;
//@end


@interface RYDelegateSecondViewController : UIViewController


//声明代理属性
//@property (nonatomic, weak) id<DemoDelegate> delegate;

////声明代理属性
@property (nonatomic, weak) id<RYTestDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
