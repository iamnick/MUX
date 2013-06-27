//
//  DataHolder.h
//  MUX
//
//  Created by Nick Stelzer on 6/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Team.h"
#import "Player.h"

@interface DataHolder : NSObject

@property (nonatomic) NSArray *teamArray;
@property (nonatomic) int selectedTeam;
@property (nonatomic) int selectedGame;
@property (nonatomic) NSString *cameFromPage;

+(void)CreateInstance;
+(DataHolder*)GetInstance;

@end
