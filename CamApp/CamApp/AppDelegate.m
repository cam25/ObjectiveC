//
//  AppDelegate.m
//  CamApp
//
//  Created by Cameron Mozie on 1/7/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
   
    int carsTotal;
    float carsTotal2;
    int myCash = 4000;
    char name = 'I';

    
    NSLog(@"%c set out to buy a car. %i is all %c have to spend. %c want the car with the lowest price and still have money left.",name, myCash,name, name);
    
    float carPrice1 =  3050.32;
    float carPrice2 =  4000.22;

    for (int x=0; x<1; x++) {
        NSLog(@"%f is first car price %f is second car price ",carPrice1,carPrice2);
    };
    
    NSLog(@"A friend tells me he has 2 cars for sale the first %f the second at %f", carPrice1, carPrice2);
    carsTotal = myCash - (int)carPrice1;
    carsTotal2 = (float) carPrice2 - (float) myCash;
    
    NSLog(@"%c do the math myself and %c will have %i left if %c buy the first car and ",name,name, carsTotal, name);
    NSLog(@"%f is what i'll have left if %c buy the second car.", carsTotal2, name);
    
    
    if(carsTotal < myCash && carsTotal2 < carsTotal) {
        printf("I can afford the first car i looked at and i bought it..  ");
    }else if (carsTotal2 || carsTotal < carPrice2){
        printf("I'll buy the second car. Now for the milage. ");
    }else{
        printf("i cant afford either car ");
    }
    
    NSLog(@"Now that i bought the car he offers me tires for it.");
    
    
    float oneTire = 50.00;
    float twoTires = 99.99;
    float threeTires = 199.99;
     float fourTires = 299.99;
    
    for (int a = 1; a <=1 ; a++) {
        
        NSLog(@"%f for 1 tire %f for two tires %f for three tires %f for four tires.", oneTire, twoTires, threeTires, fourTires);
        
        for (int b = 1;b <=1; b++) {
            NSLog(@"%f is what i'll choose since i have", fourTires);
        }
        
    }
    
    
    
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
