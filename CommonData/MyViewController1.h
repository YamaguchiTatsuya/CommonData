//
//  MyViewController1.h
//  CommonData
//
//  Created by 山口 達也 on 11/09/15.
//  Copyright (c) 2011 ringsbell.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

@interface MyViewController1 : UIViewController {
    DataManager *_dataManager;
}
@property (nonatomic, retain) DataManager *dataManager;

- (id)initWithDataManager:(DataManager *)argDataManager;

@end
