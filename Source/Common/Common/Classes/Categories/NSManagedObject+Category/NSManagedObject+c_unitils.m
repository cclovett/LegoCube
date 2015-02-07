//
//  NSManagedObject+PGUnitils.m
//  Camera360
//
//  Created by Cc on 14-5-13.
//  Copyright (c) 2014年 Pinguo. All rights reserved.
//

#import "NSManagedObject+c_unitils.h"
#import "CCoreDataManagedObjectContext.h"

@implementation NSManagedObject (c_unitils)

+ (instancetype)c_common_createCommonManagedObjectInContext:(CCoreDataManagedObjectContext *)context
{
    NSString *strClassName = [self c_common_gotCommonManagedObjectName];
    
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:strClassName
                                                         inManagedObjectContext:context];
    
    return [[self alloc] initWithEntity:entityDescription insertIntoManagedObjectContext:context];
}

+ (NSString*)c_common_gotCommonManagedObjectName
{
    NSString *strClassName = NSStringFromClass([self class]);
    return [strClassName stringByReplacingOccurrencesOfString:@"DL" withString:@""];
}

+ (instancetype)c_common_searchFirstDataInContext:(CCoreDataManagedObjectContext *)context
                                     ByPredicates:(NSArray *)predicates
                              withSortDescriptors:(NSArray *)sortDescriptors
{
    return [context pSearchDataFirstByEntityName:[self class]
                                  withPredicates:predicates
                             withSortDescriptors:sortDescriptors];
}

+ (NSArray *)c_common_searchAllDataInContext:(CCoreDataManagedObjectContext *)context
                                ByPredicates:(NSArray *)predicates
                         withSortDescriptors:(NSArray *)sortDescriptors
{
    return [context pSearchDataArrayByEntityName:[self class]
                                  withPredicates:predicates
                             withSortDescriptors:sortDescriptors];
}

+ (instancetype)c_common_gotManagedObjectWithID:(NSManagedObjectID *)objectID
                                      InContext:(CCoreDataManagedObjectContext *)context
{
    return [context pGotManagedObjectByID:objectID];
}

- (instancetype)c_common_gotManagedObjectInContext:(CCoreDataManagedObjectContext *)context
{
    return [NSManagedObject c_common_gotManagedObjectWithID:self.objectID InContext:context];
}


@end
