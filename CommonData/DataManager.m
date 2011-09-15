//
//  DataManager.m
//  CommonData
//
//  Created by 山口 達也 on 11/09/15.
//  Copyright (c) 2011 ringsbell.net. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

@synthesize isFinish = _isFinish;
@synthesize namesArray = _namesArray;

- (id)initWithNone
{
    self = [super init];
    if (self) {
        
        self.isFinish = NO;
        self.namesArray = [NSArray arrayWithObjects:@"Thomas",@"Persy",@"Gordon",nil];
        
    }
    return self;
}

- (void)dealloc
{
    self.namesArray = nil;
    [super dealloc];
}

@end
