//
//  PathManger.m
//  Common
//
//  Created by Cc on 15/2/7.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "CPathManger.h"

@implementation CPathManger

+ (NSString *)sGotDocumentDirectoryPath
{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return path;
}

+ (NSURL*)sGotDocumentDirectoryURL
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory
                                                   inDomains:NSUserDomainMask] lastObject];
}

+ (NSString*)sGotResourceBundlePath
{
    return [[NSBundle mainBundle] pathForResource:@"Resource" ofType:@"framework"];
}

+ (NSBundle*)sGotResourceBundle
{
    NSBundle *pBundle = [NSBundle bundleWithPath:[self sGotResourceBundlePath]];
    if (!pBundle) {
        //再使用 Frameworks/pg_edit_sdk_resource.framework 下的 Resource.bundle，没有找到使用以前默认资源
        NSString *pPath = [[NSBundle mainBundle] pathForResource:@"Frameworks/Resource" ofType:@"framework"];
        
        pBundle = [NSBundle bundleWithPath:pPath];
    }
    
    NSAssert(pBundle, @"");
    return pBundle;
}
@end
