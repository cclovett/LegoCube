//
//  RGlobe.h
//  Resource
//
//  Created by Cc on 15/2/7.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import <Foundation/Foundation.h>

#if DEBUG
    #define CcLog(fmt, ...) NSLog((@"[%d%s] " fmt), __LINE__, __FUNCTION__, ##__VA_ARGS__)
#else
    #define CcLog (...)
#endif

@interface RGlobe : NSObject

@end
