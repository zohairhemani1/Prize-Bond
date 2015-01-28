//
//  FirstViewController.h
//  PrizeBond
//
//  Created by Avialdo on 01/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIActionSheetDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
- (IBAction)hundred:(id)sender;
- (IBAction)twoHundred:(id)sender;
- (IBAction)seventyFifty:(id)sender;
- (IBAction)fifteenHundred:(id)sender;
- (IBAction)seventyFiveThousand:(id)sender;
- (IBAction)twentyFiveThousand:(id)sender;
- (IBAction)fortyThousand:(id)sender;
- (IBAction)TryYourLuck:(id)sender;

@end
