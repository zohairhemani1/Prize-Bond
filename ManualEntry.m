//
//  ManualEntry.m
//  PrizeBond
//
//  Created by Avialdo on 22/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import "ManualEntry.h"

@interface ManualEntry (){
    NSMutableArray *BondNumbers;
}

@end

@implementation ManualEntry

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
    BondNumbers = [[NSMutableArray alloc] init];
    self.prizeBondNumber.delegate = self;
    self.listTableView.delegate = self;
    self.listTableView.dataSource = self;
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [BondNumbers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [BondNumbers objectAtIndex:indexPath.row];
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    
    cell.textLabel.text = [BondNumbers objectAtIndex:indexPath.row];
    
    return cell;
}

- (IBAction)saveButtonClicked:(id)sender {
}

- (IBAction)tickButtonClicked:(id)sender {
}

- (IBAction)enterButtonClicked:(id)sender {
    [BondNumbers addObject:self.prizeBondNumber.text];
    [_listTableView reloadData];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [BondNumbers removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
}

@end