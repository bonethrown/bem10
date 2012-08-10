//
//  bemAppDelegate.h
//  bem10
//
//  Created by kaya tilev on 8/10/12.
//  Copyright (c) 2012 kaya tilev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bemAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
