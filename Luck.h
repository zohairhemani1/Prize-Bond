//
//  Luck.h
//  PrizeBond
//
//  Created by Avialdo on 21/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Luck : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UITextField *myDrawsTextField;
@property (weak, nonatomic) IBOutlet UILabel *congratulationsText;
- (IBAction)searchButtonClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *text_prize_no;
@property (weak, nonatomic) IBOutlet UILabel *text_draw_no;
@property (weak, nonatomic) IBOutlet UILabel *text_draw_city;
@property (weak, nonatomic) IBOutlet UILabel *text_draw_date;
@property (weak, nonatomic) IBOutlet UILabel *entries;


@end
