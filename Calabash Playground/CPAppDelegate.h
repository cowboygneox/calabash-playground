//
//  CPAppDelegate.h
//  Calabash Playground
//
//  Created by Sean Freitag on 7/3/14.
//  Copyright (c) 2014 Gneox Solutions, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CPAppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong, readonly) NSManagedObjectContext *managedObjectContext;

@end
