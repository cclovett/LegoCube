//
//  ModelBaseMgr.m
//  LegoCube
//
//  Created by Cc on 15/2/7.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "ModelBaseMgr.h"

@implementation ModelBaseMgr

+ (instancetype)instance
{
    static ModelBaseMgr *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[self alloc] init];
    });
    return _instance;
}

@end
