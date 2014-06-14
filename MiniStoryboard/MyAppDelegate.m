//
//  MyAppDelegate.m
//  MiniStoryboard
//
//  Created by yuichi on 2014/06/14.
//  Copyright (c) 2014年 nakiwo. All rights reserved.
//

#import "MyAppDelegate.h"
#import "MyMainViewController.h"

@implementation MyAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    MyMainViewController *vc = [[MyMainViewController alloc] initWithNibName:nil bundle:nil];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = vc;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
