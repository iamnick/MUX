//
//  CreateEditPlayer.h
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateEditPlayer : UIViewController
{
	IBOutlet UIButton *savePlayerButton;
    IBOutlet UIButton *checkP;
    IBOutlet UIButton *checkC;
    IBOutlet UIButton *check1B;
    IBOutlet UIButton *check2B;
    IBOutlet UIButton *checkSS;
    IBOutlet UIButton *check3B;
    IBOutlet UIButton *checkOF;
    
}

-(IBAction)onClick:(id)sender;
-(void)onHomeClick;
@end
