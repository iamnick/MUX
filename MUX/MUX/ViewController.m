//
//  ViewController.m
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"
#import "CreateEditTeam.h"
#import "TeamPage.h"
#import "CustomCell.h"
#import "DataHolder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Nav Controller
    self.title = @"Roster Buddy";
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    // Initialize Singleton
    [DataHolder CreateInstance];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Table View Configuration

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 2;
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
    if (indexPath.row == 0) {
    	cell.textLabel.text = @"Orioles";
    } else {
    	cell.textLabel.text = @"Create New Team";
    }
    
    // Cell Font/Background
    UIFont *cellFont = [UIFont fontWithName: @"Marker Felt" size: 17.0f];
	cell.textLabel.font  = cellFont;
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellbg.png"]];

	return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	if (indexPath.row == 0) {
    	// Team Page
        TeamPage *teamPageView = [[TeamPage alloc] initWithNibName:@"TeamPage" bundle:nil];
        [self.navigationController pushViewController:teamPageView animated:true];
    } else {
    	// Create Page
        CreateEditTeam *createEditTeamView = [[CreateEditTeam alloc] initWithNibName:@"CreateEditTeam" bundle:nil];
        [self.navigationController pushViewController:createEditTeamView animated:true];
    }
}

@end
