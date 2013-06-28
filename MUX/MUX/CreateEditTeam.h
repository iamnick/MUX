//
//  CreateEditTeam.h
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateEditTeam : UIViewController
{
	IBOutlet UITableView *tableView;
    IBOutlet UIButton *addPlayerButton;
    IBOutlet UIButton *saveTeamButton;
    IBOutlet UISlider *outfieldersSlider;
    IBOutlet UISlider *inningsSlider;
    IBOutlet UILabel *outfieldersLabel;
    IBOutlet UILabel *inningsLabel;
}

-(IBAction)onClick:(id)sender;
-(IBAction)valueChanged:(id)sender;
-(void)onHomeClick;
@end
