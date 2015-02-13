//
//  ViewController.m
//  LegoCube
//
//  Created by Cc on 15/2/7.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "MainViewController.h"
#import "MainBottomView.h"
#import "MainTableView.h"

@interface MainViewController () <MainBottomViewDelegate>

@property (nonatomic,weak) IBOutlet MainBottomView *mV_bottomView;

@property (nonatomic,weak) IBOutlet MainTableView *mV_tabelView;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mV_bottomView.dgDelegate = self;
}

- (void)dealloc
{
    self.mV_bottomView.dgDelegate = nil;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

#pragma mark - MainBottomViewDelegate
- (void)dgMainBottomView_onClick
{
    [self performSegueWithIdentifier:@"segueAddUnity" sender:self];
}
@end
