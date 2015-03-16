//
//  MainTableView.h
//  LegoCube
//
//  Created by Cc on 15/2/8.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MainTableViewDelegate <NSObject>

@end

@interface MainTableView : UITableView

@property (nonatomic,weak) id<MainTableViewDelegate> dgDelegate;

@end

@interface MainTableViewCell : UITableViewCell

@end
