//
//  AppDelegate.m
//  Controllers
//
//  Created by pcs20 on 9/9/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "AppDelegate.h"
#import "firstViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
#import "fourthViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //code for tab bar controller
    _tabBar=[[UITabBarController alloc] init];
    self.window.rootViewController=_tabBar;
    firstViewController *first=[[firstViewController alloc] initWithNibName:@"firstViewController" bundle:nil];
    secondViewController *second=[[secondViewController alloc] initWithNibName:@"secondViewController" bundle:nil];
    thirdViewController *third=[[thirdViewController alloc] initWithNibName:@"thirdViewController" bundle:nil];
    fourthViewController *fourth=[[fourthViewController alloc] initWithNibName:@"fourthViewController" bundle:nil];

    self.nav1=[[UINavigationController alloc] initWithRootViewController:first];
    self.nav2=[[UINavigationController alloc] initWithRootViewController:second];
    self.nav3=[[UINavigationController alloc] initWithRootViewController:third];
    self.nav4=[[UINavigationController alloc] initWithRootViewController:fourth];
    
    
    _tabBar.viewControllers=[NSArray arrayWithObjects:self.nav1,self.nav2,self.nav3, self.nav4,nil];
    _nav1.tabBarItem.title=@"Names";
    _nav2.tabBarItem.title=@"Heroes";
    _nav3.tabBarItem.title=@"Countries";
    _nav4.tabBarItem.title=@"Movies";
    
    _nav1.tabBarItem.image=[UIImage imageNamed:@"man.png"];
    _nav2.tabBarItem.image=[UIImage imageNamed:@"shirt.png"];
    _nav3.tabBarItem.image=[UIImage imageNamed:@"coding.png"];
    _nav4.tabBarItem.image=[UIImage imageNamed:@"music.png"];




    
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
