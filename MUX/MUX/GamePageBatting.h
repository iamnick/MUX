//
//  GamePageBatting.h
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GamePageBatting : UIViewController 
{
	IBOutlet UILabel *headerLabel;
	IBOutlet UITableView *tableView;
}

-(void)onHomeClick;
@end
