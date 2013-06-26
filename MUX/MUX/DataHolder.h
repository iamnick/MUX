//
//  DataHolder.h
//  MUX
//
//  Created by Nick Stelzer on 6/26/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataHolder : NSObject

@property (nonatomic) NSArray *teamArray;

+(void)CreateInstance;
+(DataHolder*)GetInstance;

@end
