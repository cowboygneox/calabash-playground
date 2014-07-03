//
// Created by Sean Freitag on 7/3/14.
// Copyright (c) 2014 Gneox Solutions, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CPSimpleManagedObject : NSManagedObject

@property (nonatomic, strong) NSNumber *index;

+ (NSString *)entityName;

+ (instancetype)newObjectInContext:(NSManagedObjectContext *)context;

@end