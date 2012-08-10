//
//  bemMasterViewController.h
//  bem10
//
//  Created by kaya tilev on 8/10/12.
//  Copyright (c) 2012 kaya tilev. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface bemMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
