//
//  MainBottomView.m
//  LegoCube
//
//  Created by Cc on 15/2/8.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "MainBottomView.h"

@interface MainBottomView ()

@property (nonatomic,weak) IBOutlet UIButton *mV_addUnity;

@end

@implementation MainBottomView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self.mV_addUnity addTarget:self
                         action:@selector(onClick:)
               forControlEvents:UIControlEventTouchUpInside];
}

- (void)dealloc
{
    [self.mV_addUnity removeTarget:self
                            action:NULL
                  forControlEvents:UIControlEventAllEvents];
}

- (void)onClick:(id)sender
{
    if (self.dgDelegate
        && [self.dgDelegate respondsToSelector:@selector(dgMainBottomView_onClick)]) {
        
        [self.dgDelegate dgMainBottomView_onClick];
    }
}

@end
