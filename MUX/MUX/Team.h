//
//  Team.h
//  MUX
//
//  Created by Nick Stelzer on 6/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Team : NSObject

@property (nonatomic) NSString *teamName;
@property (nonatomic) int numOutfielders;
@property (nonatomic) int inningsPlayed;
@property (nonatomic) NSArray *players;

-(id)initWithName:(NSString*)name andNumOF:(int)numOF andInningsPlayed:(int)innings andPlayers:(NSArray*)players;

@end
