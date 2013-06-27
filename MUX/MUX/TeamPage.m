//
//  TeamPage.m
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "TeamPage.h"
#import "CreateEditTeam.h"
#import "GamePageBatting.h"
#import "GamePageFielding.h"
#import "CustomCell.h"
#import "DataHolder.h"

@interface TeamPage ()

@end

@implementation TeamPage

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
    self.title = @"Orioles";
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
    	cell.textLabel.text = @"Friday, June 19th";
    } else {
    	cell.textLabel.text = @"New Game";
    }
    
    // Cell Font/Background
    UIFont *cellFont = [UIFont fontWithName: @"Marker Felt" size: 17.0f];
	cell.textLabel.font  = cellFont;
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellbg.png"]];

	return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	// Since we are using static dummy data, load the same view for both existing game and new game
	UITabBarController *tabBarController=[[UITabBarController alloc] init];
	GamePageBatting *gamePageBattingView = [[GamePageBatting alloc] initWithNibName:@"GamePageBatting" bundle:nil];
    GamePageFielding *gamePageFieldingView = [[GamePageFielding alloc] initWithNibName:@"GamePageFielding" bundle:nil];
    gamePageBattingView.title = @"Batting Order";
    gamePageFieldingView.title = @"Field Positions";
    
    tabBarController.viewControllers = @[gamePageBattingView, gamePageFieldingView];
    
    [self.navigationController pushViewController:tabBarController animated:true];
}

-(IBAction)onClick:(id)sender
{
	// Manage Team Button
    CreateEditTeam *createEditTeamView = [[CreateEditTeam alloc] initWithNibName:@"CreateEditTeam" bundle:nil];
    [self.navigationController pushViewController:createEditTeamView animated:true];
}

-(void)onHomeClick
{
	[self.navigationController popToRootViewControllerAnimated:YES];
}

@end
