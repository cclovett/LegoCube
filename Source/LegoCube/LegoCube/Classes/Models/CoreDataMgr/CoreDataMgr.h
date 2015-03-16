//
//  CoreDataMgr.h
//  LegoCube
//
//  Created by Cc on 15/2/7.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "ModelBaseMgr.h"
#import <Common/Common.h>

@class CCoreDataManagedObjectContext;

@interface CoreDataMgr : ModelBaseMgr

- (CCoreDataManagedObjectContext*)pCreateManagedObjectContext;

- (BOOL)pSaveToDisk:(CCoreDataManagedObjectContext*)context;

@end
