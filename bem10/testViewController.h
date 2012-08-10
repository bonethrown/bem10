//
//  testViewController.h
//  singleciewcamera
//
//  Created by kaya tilev on 8/9/12.
//  Copyright (c) 2012 kaya tilev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface testViewController : UIViewController <UIImagePickerControllerDelegate>
{
    IBOutlet UIButton *button;
    IBOutlet UIImageView *image;
    UIImagePickerController *imgPicker;
}

@property (nonatomic, retain) UIImagePickerController *imgPicker;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)grabImage;


@end
