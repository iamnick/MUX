//
//  Player.h
//  MUX
//
//  Created by Nick Stelzer on 6/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) int number;
@property (nonatomic) NSArray *positions;

-(id)initWithName:(NSString*)name andNumber:(int)num andPostions:(NSArray*)positions;

@end
