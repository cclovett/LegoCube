//
//  MainBottomView.h
//  LegoCube
//
//  Created by Cc on 15/2/8.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MainBottomViewDelegate <NSObject>

- (void)dgMainBottomView_onClick;

@end

@interface MainBottomView : UIView

@property (nonatomic,weak) id<MainBottomViewDelegate> dgDelegate;

@end
