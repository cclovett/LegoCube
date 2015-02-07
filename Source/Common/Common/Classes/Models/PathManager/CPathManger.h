//
//  PathManger.h
//  Common
//
//  Created by Cc on 15/2/7.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPathManger : NSObject

/**
 *  获取 Document Directory Path
 */
+ (NSString *)sGotDocumentDirectoryPath;
/**
 *  获取 Document Directory URL
 */
+ (NSURL*)sGotDocumentDirectoryURL;

+ (NSString*)sGotResourceBundlePath;

+ (NSBundle*)sGotResourceBundle;

@end
