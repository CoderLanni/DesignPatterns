//
//  RYTestDelegate.h
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/7.
//  Copyright © 2019 小毅. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RYTestDelegate <NSObject>

@optional
// 刷新UI  ---> tableView VC
- (void)reloadDataForUI;

// 解耦
// 需求 : 需求驱动代码  清晰
// 维护 : 快

- (void)delegateTestName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
