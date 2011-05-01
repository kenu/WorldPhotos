//
//  WorldPhotosAppDelegate.m
//  WorldPhotos
//
//  Created by kenu heo on 11. 5. 1..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WorldPhotosAppDelegate.h"
#import <CoreLocation/CoreLocation.h>

@implementation WorldPhotosAppDelegate


@synthesize window=_window;

@synthesize navigationController=_navigationController;

@synthesize photoArray;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    photoArray = [[NSArray alloc] initWithArray:[self createPhotoData]];
    
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (NSArray *)createPhotoData 
{
    CLLocation *location;
    UIImage *photo;
    UIImage *thumbnail;
    
    location = [[CLLocation alloc] initWithLatitude:31.048026 longitude:-7.13017];
    
    photo = [UIImage imageNamed:@"Africa_Morocco_1.jpg"];
    
    thumbnail = [UIImage imageNamed:@"Africa_Morocco_1_thumbnail.jpg"];
    
    NSDictionary *africa_morocco = [NSDictionary dictionaryWithObjectsAndKeys:@"Africa", @"Region", @"Morocco", @"Country", photo, @"Photo", thumbnail, @"Thumbnail", location, @"Location",nil];
    [location release];
    
    location = [[CLLocation alloc] initWithLatitude:35.700884 longitude:139.770893];
    
    photo = [UIImage imageNamed:@"Asia_Japan_1.jpg"];
    
    thumbnail = [UIImage imageNamed:@"Asia_Japan_1_thumbnail.jpg"];
    
    NSDictionary *asia_japan = [NSDictionary dictionaryWithObjectsAndKeys:@"Asia", @"Region", @"Japan", @"Country", photo, @"Photo", thumbnail, @"Thumbnail", location, @"Location",nil];
    [location release];
    
    location = [[CLLocation alloc] initWithLatitude:46.981248 longitude:8.253908];
    
    photo = [UIImage imageNamed:@"Europe_Swiss_1.jpg"];
    
    thumbnail = [UIImage imageNamed:@"Europe_Swiss_1_thumbnail.jpg"];
    
    NSDictionary *europe_swiss = [NSDictionary dictionaryWithObjectsAndKeys:@"Europe", @"Region", @"Swiss", @"Country", photo, @"Photo", thumbnail, @"Thumbnail", location, @"Location",nil];
    [location release];

    
    NSArray *returnArray = [NSArray arrayWithObjects:africa_morocco, asia_japan, europe_swiss, nil];
    return returnArray;
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

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [super dealloc];
}

@end
