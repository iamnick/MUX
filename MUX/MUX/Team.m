//
//  Team.m
//  MUX
//
//  Created by Nick Stelzer on 6/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "Team.h"

@implementation Team

-(id)initWithName:(NSString*)name andNumOF:(int)numOF andInningsPlayed:(int)innings andPlayers:(NSArray*)players
{
	if (self = [super init]) {
		// custom init
        [self setTeamName:name];
        [self setNumOutfielders:numOF];
        [self setInningsPlayed:innings];
        [self setPlayers:players];
    }
    return self;
}

@end
