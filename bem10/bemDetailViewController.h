//
//  bemDetailViewController.h
//  bem10
//
//  Created by kaya tilev on 8/10/12.
//  Copyright (c) 2012 kaya tilev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bemDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
