//
//  CreateEditTeam.m
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "CreateEditTeam.h"
#import "CreateEditPlayer.h"
#import "CustomCell.h"
#import "DataHolder.h"

@interface CreateEditTeam ()

@end

@implementation CreateEditTeam

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
    self.title = @"Edit Team";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(onHomeClick)];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Table View Configuration

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 1;
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
    cell.textLabel.text = @"Add players using the icon above.";
    
    // Cell Font/Background
    UIFont *cellFont = [ UIFont fontWithName: @"Marker Felt" size: 17.0f];
	cell.textLabel.font  = cellFont;
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellbg.png"]];

	return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	
}

-(IBAction)onClick:(id)sender
{
	UIButton *button = (UIButton*)sender;
	if (button.tag == 0) {
    	// Add Player Button - Tag 0
    	CreateEditPlayer *createEditPlayerView = [[CreateEditPlayer alloc] initWithNibName:@"CreateEditPlayer" bundle:nil];
        [self.navigationController pushViewController:createEditPlayerView animated:true];
    } else if (button.tag == 1) {
    	// Save Team Button - Tag 1
        [self.navigationController popViewControllerAnimated:true];
    }
}

-(void)onHomeClick
{
	[self.navigationController popToRootViewControllerAnimated:YES];
}

@end
