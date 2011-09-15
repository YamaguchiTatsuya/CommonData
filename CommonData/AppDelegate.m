//
//  AppDelegate.m
//  CommonData
//
//  Created by 山口 達也 on 11/09/15.
//  Copyright (c) 2011 ringsbell.net. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [tabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    
    
    //dataManager
    DataManager *dataManager = [[DataManager alloc] initWithNone];
    
    
    //viewControllers
    MyViewController1 *myViewController1 = [[MyViewController1 alloc] initWithDataManager:dataManager];
    UINavigationController *navigationController1 = [[UINavigationController alloc] init];
	[navigationController1 pushViewController:myViewController1 animated:NO];
    [myViewController1 release];
    
    MyViewController2 *myViewController2 = [[MyViewController2 alloc] initWithNibName:nil bundle:nil];
    myViewController2.dataManager = dataManager;
    UINavigationController *navigationController2 = [[UINavigationController alloc] init];
	[navigationController2 pushViewController:myViewController2 animated:NO];
    [myViewController2 release];
    
    [dataManager release];
    
    
    //tabBarController
    tabBarController = [[UITabBarController alloc] init];
	[tabBarController setViewControllers:[NSArray arrayWithObjects:navigationController1 , navigationController2 , nil]];
    [_window addSubview:tabBarController.view];
    
    [navigationController1 release];
    [navigationController2 release];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
