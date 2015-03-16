//
//  CoreDataMgr.m
//  LegoCube
//
//  Created by Cc on 15/2/7.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "CoreDataMgr.h"

@interface CoreDataMgr ()

@property (nonatomic,strong) CCoreDataManager *mCoreDataMgr;

@end

@implementation CoreDataMgr

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _mCoreDataMgr = [[CCoreDataManager alloc] init];
        //设置DB位置
        NSString *basePath = [CPathManger sGotDocumentDirectoryPath];
        NSString *dbPath = [NSString pathWithComponents:@[basePath, @"LegoCube.db"]];
        NSURL *dbUrl = [NSURL fileURLWithPath:dbPath];
        [_mCoreDataMgr pSetupCoreDataDBUrl:dbUrl];
        
        
        NSBundle *pBundle = [CPathManger sGotResourceBundle];
        NSURL *modelUrl = [pBundle URLForResource:@"LegoCube" withExtension:@"momd"];
        [_mCoreDataMgr pSetupCoreDataModelUrl:modelUrl];

    }
    return self;
}

- (CCoreDataManagedObjectContext *)pCreateManagedObjectContext
{
    return [self.mCoreDataMgr pCreatePrivateQueueContext];
}

- (BOOL)pSaveToDisk:(CCoreDataManagedObjectContext *)context
{
    return [self.mCoreDataMgr pSaveDisk:context];
}
@end
