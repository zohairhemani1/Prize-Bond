//
//  FirstViewController.m
//  PrizeBond
//
//  Created by Avialdo on 01/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
{
    UIPickerView *myPickerView;
    int screenWidth;
    int screenHeight;
}
@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    screenWidth = screenRect.size.width;
    screenHeight = screenRect.size.height;
    [self setButtonSizes];
    
}

-(void)setButtonSizes
{
    int divider = 6;
    int y = 50;
    int yOffset = (screenHeight/divider)/4;
    
    [self.hundredButton setFrame:CGRectMake(0,y,160,screenHeight/divider)];
    [self numberOfPrizeBOnds:0 xPosition:30 yPostion:y+yOffset];
    [self.twoHundredButton setFrame:CGRectMake(160,y,160,screenHeight/divider)];
    [self numberOfPrizeBOnds:0 xPosition:190 yPostion:y+yOffset];
    [self.sevenFiftyButton setFrame:CGRectMake(0,y=y+screenHeight/divider,160,screenHeight/divider)];
    [self numberOfPrizeBOnds:0 xPosition:30 yPostion:y+yOffset];
    [self.fifteenhundredButton setFrame:CGRectMake(160,y,160,screenHeight/divider)];
    [self numberOfPrizeBOnds:0 xPosition:190 yPostion:y+yOffset];
    [self.seventyfiveButton setFrame:CGRectMake(0,y=y+screenHeight/divider,160,screenHeight/divider)];
    [self numberOfPrizeBOnds:0 xPosition:30 yPostion:y+yOffset];
    [self.twentyFiveButton setFrame:CGRectMake(160,y,160,screenHeight/divider)];
    [self numberOfPrizeBOnds:0 xPosition:190 yPostion:y+yOffset];
    [self.fortyButton setFrame:CGRectMake(0,y=y+screenHeight/divider,320,screenHeight/divider)];
    [self numberOfPrizeBOnds:0 xPosition:110 yPostion:y+yOffset];
    [self.tryLuckButton setFrame:CGRectMake(0,y=y+screenHeight/divider,320,screenHeight/divider)];
}

-(void)numberOfPrizeBOnds: (int)bonds xPosition:(int)x yPostion:(int)y
{
    UILabel *howManyBonds = [[UILabel alloc]initWithFrame:CGRectMake(x, y, 200, 100)];
    NSString *thisMany = [NSString stringWithFormat:@"%d prize Bonds", bonds];
    howManyBonds.textColor = [UIColor whiteColor];
    
    howManyBonds.text = thisMany;
    [self.view addSubview:howManyBonds];
    
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

@end
