//
//  Game.h
//  MUX
//
//  Created by Nick Stelzer on 6/27/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

@property (nonatomic) NSString *dateString;
@property (nonatomic) NSArray *battingOrder;
@property (nonatomic) NSArray *fieldPositions; // 0 - OF, 1 - P, 2 - C, 3 - 1B, 4 - 2B, 5 - 3B, 6 - SS

@end
