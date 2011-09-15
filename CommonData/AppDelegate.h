//
//  AppDelegate.h
//  CommonData
//
//  Created by 山口 達也 on 11/09/15.
//  Copyright (c) 2011 ringsbell.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"
#import "MyViewController1.h"
#import "MyViewController2.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    UITabBarController *tabBarController;
    
}

@property (strong, nonatomic) UIWindow *window;

@end
