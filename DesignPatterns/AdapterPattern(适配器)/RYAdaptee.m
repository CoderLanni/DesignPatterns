//
//  RYAdaptee.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYAdaptee.h"

@implementation RYAdaptee


-(id)init{
    
    self = [super init];
    if(self)
    {
        _name = @"adaptee target";
    }
    return self;
}

-(void)sayName{
    
    NSLog(@"%@",self.name);
    
}

@end
