//
//  testViewController.m
//  singleciewcamera
//
//  Created by kaya tilev on 8/9/12.
//  Copyright (c) 2012 kaya tilev. All rights reserved.
//

#import "testViewController.h"



@implementation testViewController

@synthesize button = _button;

- (void)viewDidLoad
{
    self.imgPicker = [[UIImagePickerController alloc] init];
    self.imgPicker.allowsImageEditing = YES;
    self.imgPicker.delegate = self;
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)grabImage
{
    [self presentModalViewController:self.imgPicker animated:YES];
}

/////////////
/////////////

- (IBAction)takePicture:(id)sender
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        NSArray *mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
        if ([mediaTypes containsObject:(NSString *)kUTTypeImage]) {
            UIImagePickerController *picker = [[UIImagePickerController alloc] init];
            picker.delegate = self;
            picker.sourceType = UIImagePickerControllerSourceTypeCamera;
            picker.mediaTypes = [NSArray arrayWithObject:(NSString *)kUTTypeImage];
            picker.allowsEditing = YES;
            [self presentModalViewController:picker animated:YES];
        }
    }
}

- (void)dismissImagePicker
{
    [self dismissModalViewControllerAnimated:YES];
}

#define MAX_IMAGE_WIDTH 200

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    UIImage *imageTake = [info objectForKey:UIImagePickerControllerEditedImage];
    if (!imageTake) imageTake = [info objectForKey:UIImagePickerControllerOriginalImage];
    if (imageTake) {
        //UIImageView *imageView = [[UIImageView alloc] initWithImage:imageTake];
        image.image=imageTake;
        CGRect frame = image.frame;
        while (frame.size.width > MAX_IMAGE_WIDTH) {
            frame.size.width /= 2;
            frame.size.height /= 2;
        }
        
        [self.view addSubview:image];
    }
    [self dismissImagePicker];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissImagePicker];
}


- (void)viewDidUnload {
    [self setButton:nil];
    [self setView:nil];
    [super viewDidUnload];
}

@end
