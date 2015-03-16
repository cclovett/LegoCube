//
//  DLUnity+c_unitils.h
//  Common
//
//  Created by Cc on 15/3/16.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "DLUnity.h"

@class CCoreDataManagedObjectContext;

@interface DLUnity (c_unitils)

+ (NSArray *)c_GotAllUnities:(CCoreDataManagedObjectContext*)context;

@end
