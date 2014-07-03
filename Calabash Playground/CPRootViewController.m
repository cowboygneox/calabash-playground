//
// Created by Sean Freitag on 7/3/14.
// Copyright (c) 2014 Gneox Solutions, LLC. All rights reserved.
//

#import "CPRootViewController.h"
#import "CPCrudTableViewController.h"


@implementation CPRootViewController

- (id)init {
    return [self initWithRootViewController:[[CPCrudTableViewController alloc] init]];
}

@end