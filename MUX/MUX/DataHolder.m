//
//  DataHolder.m
//  MUX
//
//  Created by Nick Stelzer on 6/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "DataHolder.h"
#import "Team.h"
#import "Player.h"
#import "Game.h"

@implementation DataHolder

static DataHolder *_instance = nil;

+(void)CreateInstance
{
	if (_instance == nil) {
    	[[self alloc] init];
    }
}

+(DataHolder*)GetInstance
{
	return _instance;
}

+(id)alloc
{
	_instance = [super alloc];
    return _instance;
}

-(id)init
{
	if (self = [super init]){
    	// custom init
        // arrays of static player data to be added to objects
        NSArray *playerNames = [[NSArray alloc] initWithObjects:@"Sean", @"Jack", @"Ryan", @"James", @"Dylan", @"Bennett", @"Matt", @"Ethan", @"Sam", nil];
        NSArray *playerNumbers = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:2], [NSNumber numberWithInt:3], [NSNumber numberWithInt:4], [NSNumber numberWithInt:5], [NSNumber numberWithInt:6], [NSNumber numberWithInt:7], [NSNumber numberWithInt:8], [NSNumber numberWithInt:9], nil];
        NSArray *allPositions = [[NSArray alloc] initWithObjects:[NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], nil];
        NSMutableArray *playerObjects = [[NSMutableArray alloc] init];
        
        // create player objects using above data
        for (int i = 0; i < [playerNames count]; i++)
        {
        	Player *newPlayer = [[Player alloc] initWithName:[playerNames objectAtIndex:i] andNumber:[playerNumbers objectAtIndex:i] andPostions:allPositions];
        	[playerObjects addObject:newPlayer];
        }
        
        // create team object using player objects
        Team *orioles = [[Team alloc] initWithName:@"Orioles" andNumOF:3 andInningsPlayed:6 andPlayers:playerObjects];
        
        // create a previous game object
        NSArray *battingOrder = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:4], [NSNumber numberWithInt:2], [NSNumber numberWithInt:6], [NSNumber numberWithInt:0], [NSNumber numberWithInt:3], [NSNumber numberWithInt:7], [NSNumber numberWithInt:8], [NSNumber numberWithInt:5], nil];
        NSArray *fieldPos1st = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:4], [NSNumber numberWithInt:2], [NSNumber numberWithInt:6], [NSNumber numberWithInt:0], [NSNumber numberWithInt:3], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:5], [NSNumber numberWithInt:1], nil];
        NSArray *fieldPos2nd = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:4], [NSNumber numberWithInt:2], [NSNumber numberWithInt:6], [NSNumber numberWithInt:0], [NSNumber numberWithInt:3], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:5], nil];
        NSArray *fieldPos3rd = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:6], [NSNumber numberWithInt:0], [NSNumber numberWithInt:3], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:5], [NSNumber numberWithInt:1], [NSNumber numberWithInt:4], nil];
        NSArray *fieldPos4th = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:6], [NSNumber numberWithInt:0], [NSNumber numberWithInt:3], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:5], [NSNumber numberWithInt:1], [NSNumber numberWithInt:4], [NSNumber numberWithInt:2], nil];
        NSArray *fieldPos5th = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:0], [NSNumber numberWithInt:3], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:5], [NSNumber numberWithInt:1], [NSNumber numberWithInt:4], [NSNumber numberWithInt:2], [NSNumber numberWithInt:6], nil];
        NSArray *fieldPos6th = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:3], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:5], [NSNumber numberWithInt:1], [NSNumber numberWithInt:4], [NSNumber numberWithInt:2], [NSNumber numberWithInt:6], [NSNumber numberWithInt:0], nil];
        NSArray *fieldPositions = [[NSArray alloc] initWithObjects:fieldPos1st, fieldPos2nd, fieldPos3rd, fieldPos4th, fieldPos5th, fieldPos6th, nil];
    
        
        Game *prevGame = [[Game alloc] init];
        [prevGame setBattingOrder:battingOrder];
        [prevGame setFieldPositions:fieldPositions];
        [prevGame setDateString:@"Friday, June 21st"];
        NSMutableArray *prevGames = [[NSMutableArray alloc] init];
        [prevGames addObject:prevGame];
        [orioles setPrevGames:prevGames];
        
        // put the default data team in teamArray
    	[self setTeamArray:@[orioles]];
    }
    return self;
}

@end
