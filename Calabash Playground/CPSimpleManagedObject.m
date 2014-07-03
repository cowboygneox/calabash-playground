//
// Created by Sean Freitag on 7/3/14.
// Copyright (c) 2014 Gneox Solutions, LLC. All rights reserved.
//

#import "CPSimpleManagedObject.h"


@implementation CPSimpleManagedObject

@dynamic index;

+ (NSString *)entityName {
    return @"SimpleObject";
}

+ (instancetype)newObjectInContext:(NSManagedObjectContext *)context {
    return [[CPSimpleManagedObject alloc] initWithEntity:[NSEntityDescription entityForName:[self entityName] inManagedObjectContext:context] insertIntoManagedObjectContext:context];
}

static NSNumber *__lastIndex;

- (void)awakeFromInsert {
    [super awakeFromInsert];

    @synchronized (self) {
        if (__lastIndex == nil)
            __lastIndex = @0;

        NSNumber *newIndex = @(__lastIndex.integerValue + 1);
        __lastIndex = newIndex;
        self.index = newIndex;
    }
}

@end