//
//  UIButton+c_unitils.h
//  Common
//
//  Created by Cc on 15/2/8.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (c_unitils)

- (void)c_addTarget:(id)target
             action:(SEL)action
   forControlEvents:(UIControlEvents)controlEvents;

@end
