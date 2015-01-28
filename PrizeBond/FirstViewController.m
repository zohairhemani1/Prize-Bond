//
//  FirstViewController.m
//  PrizeBond
//
//  Created by Avialdo on 01/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController (){
    UIPickerView *myPickerView;
}
@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hundred:(id)sender {
    
    [self performSegueWithIdentifier:@"prizeList" sender:self];
}

- (IBAction)twoHundred:(id)sender {
    
    [self performSegueWithIdentifier:@"prizeList" sender:self];
}

- (IBAction)seventyFifty:(id)sender {
    
    [self performSegueWithIdentifier:@"prizeList" sender:self];
}

- (IBAction)fifteenHundred:(id)sender {
    
    [self performSegueWithIdentifier:@"prizeList" sender:self];
}

- (IBAction)seventyFiveThousand:(id)sender {
    
    [self performSegueWithIdentifier:@"prizeList" sender:self];
}

- (IBAction)twentyFiveThousand:(id)sender {
    
    [self performSegueWithIdentifier:@"prizeList" sender:self];
}

- (IBAction)fortyThousand:(id)sender {
    
    [self performSegueWithIdentifier:@"prizeList" sender:self];
}

- (IBAction)TryYourLuck:(id)sender {
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

- (IBAction)upload:(id)sender {
    
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"What do you want to do?"
                                  delegate:self
                                  cancelButtonTitle:@"Cancel"
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:@"Take Photo", @"Choose From Existing",@"Manually Enter", nil];
    
    [actionSheet showInView:self.view];
    
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    
    
    if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:@"Take Photo"]) {
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    else if([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:@"Manually Enter"]){
        
        double delayInSeconds = 0.1;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            //[self presentViewController:<#(UIViewController *)#> animated:YES completion:nil]
        });
        
        
        NSLog(@"Inserted");
    }
    else if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:@"Choose From Existing"]) {
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    
    else{
        return;
    }
    [self presentViewController:picker animated:YES completion:nil];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //uploadedimage = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated:YES completion:NULL];
}



@end
