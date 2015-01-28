//
//  ManualEntry.h
//  PrizeBond
//
//  Created by Avialdo on 22/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ManualEntry : UIViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
- (IBAction)enterButtonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *prizeBondNumber;
- (IBAction)saveButtonClicked:(id)sender;
- (IBAction)tickButtonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *listTableView;

@end
