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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Table View Configuration

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [views objectAtIndex:0];
    }    cell.textLabel.text = @"TEST";
    
    UIFont *cellFont = [ UIFont fontWithName: @"Marker Felt" size: 17.0f];
	cell.textLabel.font  = cellFont;

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
