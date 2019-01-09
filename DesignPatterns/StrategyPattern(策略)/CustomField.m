//
//  CustomField.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/9.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "CustomField.h"

@interface CustomField ()

@end


@implementation CustomField

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setup];
    }
    
    return self;
}

- (void)setup {
    
    UIView *leftView       = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, self.frame.size.height)];
    self.leftView          = leftView;
    self.leftViewMode      = UITextFieldViewModeAlways;
    self.font = [UIFont fontWithName:@"Avenir-Book" size:12.f];
    self.layer.borderWidth = 0.5f;
}

- (BOOL)validate {
    return [self.validator validateInput:self];
}

@end
