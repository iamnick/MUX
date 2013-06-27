//
//  GamePageFielding.m
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "GamePageFielding.h"
#import "CustomCell.h"
#import "DataHolder.h"

@interface GamePageFielding ()

@end

@implementation GamePageFielding

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
    // Do any additional setup after loading the view from its nib.
    
    // Nav Controller
    self.title = @"Field Positions";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(onHomeClick)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Table View Configuration

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 9;
}

-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [views objectAtIndex:0];
    }
    
    // Cell Text
    cell.textLabel.text = @"Player";
    
    // Cell Font/Background
    UIFont *cellFont = [UIFont fontWithName: @"Marker Felt" size: 17.0f];
	cell.textLabel.font  = cellFont;
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellbg.png"]];

	return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

-(IBAction)onChange:(id)sender
{
	UIStepper *stepper = (UIStepper*)sender;
    if (stepper.value == 1) {
    	inningLabel.text = @"Inning: 1st";
    } else if (stepper.value == 2) {
    	inningLabel.text = @"Inning: 2nd";
    } else if (stepper.value == 3) {
    	inningLabel.text = @"Inning: 3rd";
    } else if (stepper.value == 4) {
    	inningLabel.text = @"Inning: 4th";
    } else if (stepper.value == 5) {
        inningLabel.text = @"Inning: 5th";
    } else {
    	inningLabel.text = @"Inning: 6th";
    }
}

-(void)onHomeClick
{
	[self.navigationController popToRootViewControllerAnimated:YES];
}

@end
