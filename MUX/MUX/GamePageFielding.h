//
//  GamePageFielding.h
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GamePageFielding : UIViewController
{
	IBOutlet UITableView *tableView;
    IBOutlet UIStepper *inningStepper;
    IBOutlet UILabel *inningLabel;
}

-(IBAction)onChange:(id)sender;

@end
