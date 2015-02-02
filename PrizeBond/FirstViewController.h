//
//  FirstViewController.h
//  PrizeBond
//
//  Created by Avialdo on 01/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *hundredButton;
- (IBAction)hundred:(id)sender;
- (IBAction)twoHundred:(id)sender;
- (IBAction)seventyFifty:(id)sender;
- (IBAction)fifteenHundred:(id)sender;
- (IBAction)seventyFiveThousand:(id)sender;
- (IBAction)twentyFiveThousand:(id)sender;
- (IBAction)fortyThousand:(id)sender;
- (IBAction)TryYourLuck:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *twoHundredButton;
@property (weak, nonatomic) IBOutlet UIButton *sevenFiftyButton;
@property (weak, nonatomic) IBOutlet UIButton *fifteenhundredButton;
@property (weak, nonatomic) IBOutlet UIButton *seventyfiveButton;
@property (weak, nonatomic) IBOutlet UIButton *twentyFiveButton;
@property (weak, nonatomic) IBOutlet UIButton *fortyButton;
@property (weak, nonatomic) IBOutlet UIButton *tryLuckButton;

@end
