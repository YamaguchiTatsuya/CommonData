//
//  DataManager.h
//  CommonData
//
//  Created by 山口 達也 on 11/09/15.
//  Copyright (c) 2011 ringsbell.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject {
    
    BOOL _isFinish;
    NSArray *_namesArray;
    
}
@property (nonatomic, assign) BOOL isFinish;
@property (nonatomic, retain) NSArray *namesArray;

- (id)initWithNone;

@end
