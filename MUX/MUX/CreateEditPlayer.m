//
//  CreateEditPlayer.m
//  MUX
//
//  Created by Nick Stelzer on 6/23/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "CreateEditPlayer.h"
#import "Dataholder.h"

@interface CreateEditPlayer ()

@end

@implementation CreateEditPlayer

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
    self.title = @"Edit Player";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(onHomeClick)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
	// Save Button
    [self.navigationController popViewControllerAnimated:true];
}

-(void)onHomeClick
{
	[self.navigationController popToRootViewControllerAnimated:YES];
}
@end
