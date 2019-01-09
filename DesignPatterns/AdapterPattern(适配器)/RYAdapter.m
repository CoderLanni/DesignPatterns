//
//  RYAdapter.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYAdapter.h"

@implementation RYAdapter

-(void)speakName  //目标中的代理方法
{
    [self.adaptee sayName];
}

@end
