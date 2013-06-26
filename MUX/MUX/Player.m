//
//  Player.m
//  MUX
//
//  Created by Nick Stelzer on 6/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "Player.h"

@implementation Player

-(id)initWithName:(NSString*)name andNumber:(int)num andPostions:(NSArray*)positions
{
	if (self = [super init]) {
		// custom init
        [self setName:name];
        [self setNumber:num];
        [self setPositions:positions];
    }
    return self;
}

@end
