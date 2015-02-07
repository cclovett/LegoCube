//
//  BIZCoreDataManager.h
//  CCCoreDataDemo
//
//  Created by Cc on 14-5-8.
//  Copyright (c) 2014年 Cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CCoreDataManagedObjectContext;

/**
 *  Manager
 */
@interface CCoreDataManager : NSObject

/**
 *  [警告：必须在使用之前初始化该方法]
 *
 *  设置DB 的 URL
 */
- (void)pSetupCoreDataDBUrl:(NSURL*)url;

/**
 *  [警告：必须在使用之前初始化该方法]
 *
 *  设置Model 的 URL
 */
- (void)pSetupCoreDataModelUrl:(NSURL*)url;

/**
 *  创建一个新的Context 来操作数据库, 在调用此方法之前，需要调用 pSetupCoreDataDBUrl: 和  pSetupCoreDataModelUrl: 2个方法
 *
 *  @return BIZCoreDataManagedObjectContext
 */
- (CCoreDataManagedObjectContext *)pCreatePrivateQueueContext;

/**
 *  保存到disk
 */
//+ (BOOL)sSaveDisk;
- (BOOL)pSaveDisk;

/**
 *  同时保存context
 */
- (BOOL)pSaveDisk:(CCoreDataManagedObjectContext*)context;

@end
