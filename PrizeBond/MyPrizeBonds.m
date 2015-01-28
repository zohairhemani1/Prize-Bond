//
//  MyPrizeBonds.m
//  PrizeBond
//
//  Created by Avialdo on 01/12/2014.
//  Copyright (c) 2014 Avialdo. All rights reserved.
//

#import "MyPrizeBonds.h"

@interface MyPrizeBonds (){
    UIImage *uploadedimage;
    NSMutableArray *bondNumbers;
}

@end

@implementation MyPrizeBonds

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self storeLanguageFile];
    bondNumbers = [[NSMutableArray alloc]initWithObjects:@"040787",@"086668",@"122743",@"163339",@"193918", nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    UIImage * PrizeBondImage = [UIImage imageNamed:@"PrizeBondSample"];
    NSString *retVal = [self scanImage:PrizeBondImage];
    NSLog(@"RETURNED VALUE: %@", retVal);
    
    
}
- (BOOL)shouldCancelImageRecognitionForTesseract:(Tesseract*)tesseract
{
    NSLog(@"progress: %d", tesseract.progress);
    return NO;  // return YES, if you need to interrupt tesseract before it finishes
}

- (void)storeLanguageFile {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *docsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *path = [docsDirectory stringByAppendingPathComponent:@"/tessdata/eng.traineddata"];
    if(![fileManager fileExistsAtPath:path])
    {
        NSData *data = [NSData dataWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingString:@"/tessdata/eng.traineddata"]];
        NSError *error;
        [[NSFileManager defaultManager] createDirectoryAtPath:[docsDirectory stringByAppendingPathComponent:@"/tessdata"] withIntermediateDirectories:YES attributes:nil error:&error];
        [data writeToFile:path atomically:YES];
    }
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [touches anyObject];
    CGPoint pos = [touch locationInView: [UIApplication sharedApplication].keyWindow];
    NSLog(@"Position of touch: %.3f, %.3f", pos.x, pos.y);
}

- (NSString *)scanImage:(UIImage *)image {
    
    Tesseract *tesseract = [[Tesseract alloc] initWithDataPath:@"/tessdata" language:@"eng"];
    
    [tesseract setVariableValue:@"0123456789" forKey:@"tessedit_char_whitelist"];
    
    if (image) {
        [tesseract setImage:image];
              [tesseract recognize];
        return [tesseract recognizedText];
    }
    return nil;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [bondNumbers count];
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bondDetails" forIndexPath:indexPath];
    
    cell.textLabel.text = [bondNumbers objectAtIndex:indexPath.row];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
