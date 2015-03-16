//
//  MainTableView.m
//  LegoCube
//
//  Created by Cc on 15/2/8.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "MainTableView.h"
#import "CoreDataMgr.h"

#define kkHeight 100

@interface MainTableView () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation MainTableView

-(void)awakeFromNib
{
    self.delegate = self;
    self.dataSource = self;
}

#pragma mark - interface
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kkHeight;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    CCoreDataManagedObjectContext *context = [[CoreDataMgr instance] pCreateManagedObjectContext];
    NSArray *arr = [DLUnity c_GotAllUnities:context];
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end

@implementation MainTableViewCell

@end
