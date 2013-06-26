//
//  ViewController.m
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"
#import "CreateEditTeam.h"
#import "CustomCell.h"
#import "Dataholder.h"
#import "Team.h"
#import "Player.h"

// remove later
#import "GamePageBatting.h"
#import "GamePageFielding.h"

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
	// return the number of teams loaded + 1 for the create option
	return ([[[DataHolder GetInstance] teamArray] count] + 1);
}

-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [views objectAtIndex:0];
    }
    
    if (indexPath.row > ([[[DataHolder GetInstance] teamArray] count]-1)) {
    	cell.textLabel.text = @"Create New Team";
    } else {
    	cell.textLabel.text = [[[[DataHolder GetInstance] teamArray] objectAtIndex:indexPath.row] teamName];
    }
    UIFont *cellFont = [UIFont fontWithName: @"Marker Felt" size: 17.0f];
	cell.textLabel.font  = cellFont;
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellbg.png"]];

	return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITabBarController *tabBarController=[[UITabBarController alloc] init];
	GamePageBatting *gamePageBattingView = [[GamePageBatting alloc] initWithNibName:@"GamePageBatting" bundle:nil];
    GamePageFielding *gamePageFieldingView = [[GamePageFielding alloc] initWithNibName:@"GamePageFielding" bundle:nil];
    tabBarController.viewControllers = @[gamePageBattingView, gamePageFieldingView];
    
    
    [self.navigationController pushViewController:tabBarController animated:true];
}

@end
