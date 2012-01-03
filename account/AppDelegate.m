//
//  AppDelegate.m
//  account
//
//  Created by Duan Yong on 1/4/12.
//  Copyright (c) 2012 Aiyuji.com. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    //计算各窗体之间的坐标，方便直接调用
    float height    = [[UIScreen mainScreen] applicationFrame].size.height;
    frameWidth      = [[UIScreen mainScreen] applicationFrame].size.width;
    
    //标题区域
    titleHeight = 44.0;
    titleX = 0.0;
    titleY = 0.0;

    //控制区域
    controllerHeight = 44.0;
    controllerX = 0.0;
    controllerY = height - controllerHeight;
    
    
    //主体区域
    controllerHeight = height - titleHeight - controllerHeight;
    contentX = 0.0;
    contentY = titleHeight;
    
    
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
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

//获取标题区域的CGRect结构
+ (CGRect)getTitleBounds
{
    return [self getTitleBounds];
}

- (CGRect)getTitleBounds
{ 
    return CGRectMake(titleX, titleY, frameWidth, titleHeight);
}

//获取控制区域的CGRect结构
+ (CGRect)getControllerBounds
{
    return [self getControllerBounds];
}

- (CGRect)getControllerBounds
{
    return CGRectMake(controllerX, controllerY, frameWidth, controllerHeight);
}


@end
