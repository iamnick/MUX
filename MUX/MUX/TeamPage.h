//
//  TeamPage.h
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeamPage : UIViewController
{
	IBOutlet UITableView *tableView;
    IBOutlet UIButton *manageTeamButton;
}

-(IBAction)onClick:(id)sender;

@end
