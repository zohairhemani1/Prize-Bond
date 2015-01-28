//
//  Luck.m
//  PrizeBond
//
//  Created by Avialdo on 21/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import "Luck.h"

@interface Luck ()

@end

@implementation Luck

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myTextField.delegate = self;
    self.myDrawsTextField.delegate = self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)searchButtonClicked:(id)sender {
    
    NSURL *fileURL = [NSURL URLWithString:@"http://fajjemobile.info/prizebond_iosapplication/01-02-2007,Rs.7500.txt"];
    
    // Read the contents of the file into a string.
    NSError *error = nil;
    NSString *fileContentsString = [NSString stringWithContentsOfURL:fileURL
                                                            encoding:NSUTF8StringEncoding
                                                               error:&error];
    // Make sure that the file has been read, log an error if it hasn't.
    if (!fileContentsString) {
        NSLog(@"Error reading file");
    }
    
    NSLog(@"%@",fileContentsString);
    
    NSString *delimeters = @"\n\t ";
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:delimeters];
    
    NSArray *array = [fileContentsString componentsSeparatedByCharactersInSet:set];
    NSLog(@"ARRAY after insertion: %@",array);
    
    if([array containsObject:self.myTextField.text] == TRUE)
    {
        NSLog(@"STRING FOUND");
        self.entries.text = @"1 Entry Found";
        self.congratulationsText.text = @"CONGRATULATIONS";
        self.text_prize_no.text = self.myTextField.text;
        self.text_draw_no.text = @"51";
        self.text_draw_city.text = @"Karachi";
        self.text_draw_date.text = @"01-02-2007";
    }
    else
    {
        NSLog(@"STRING NOT FOUND");
        self.entries.text = @"No Record Found";
        self.congratulationsText.text = @"TRY AGAIN";
        self.text_prize_no.text = @"NOT FOUND";
        self.text_draw_no.text = @"NOT FOUND";
        self.text_draw_city.text = @"NOT FOUND";
        self.text_draw_date.text = @"NOT FOUND";
    }
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UIView * txt in self.view.subviews){
        if ([txt isKindOfClass:[UITextField class]] && [txt isFirstResponder]) {
            [txt resignFirstResponder];
        }
        
        else if ([txt isKindOfClass:[UITextView class]] && [txt isFirstResponder]) {
            [txt resignFirstResponder];
        }
        
    }
}

@end
