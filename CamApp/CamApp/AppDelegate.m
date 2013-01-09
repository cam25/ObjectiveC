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
    
   //variables
    float carsTotal;
    BOOL doesNeedTires = YES;
    float carsTotal2;
    int myCash = 4000;
    char name = 'I';
   
    
    NSLog(@"%c set out to buy a car. %i is all %c have to spend. %c want the car with the lowest price and still have money left.",name, myCash,name, name);
    
    float carPrice1 =  3050.32;
    float carPrice2 =  4000.22;

    for (int x=0; x<1; x++) {
        NSLog(@"%.2f is first car price %.2f is second car price ",carPrice1,carPrice2);
    };
    
    
    //Car totals being calculated 
    carsTotal = myCash - (int)carPrice1;
    carsTotal2 = (float) carPrice2 - (float) myCash;
    
    NSLog(@"%c do the math myself and %c will have %.2f left if %c buy the first car and ",name,name, carsTotal, name);
    NSLog(@"%.2f is what i'll have left if %c buy the second car.", carsTotal2, name);
    
    //if carsTotal is less than my money & cars total2 is less than carsTotal buy first car
    if((carsTotal < myCash) && (carsTotal2 < carsTotal)) {
        printf("I can afford the first car i looked at and i bought it..  ");
        int x;
        int b;
        for (x=0; x<=0; x++) {//counter
            NSLog(@"%i",x);
            for (b=1; b<=3; b++) {
                NSLog(@"%i..",b);
                
            }
            NSLog(@"SOLD!");
        }
    }else if ((carsTotal2 > carPrice2 ) || (carPrice2 < carPrice1)){//else if carTotal2 is greater than carPrice2 or carprice2 is less than carprice1 then buy second car
        printf("I'll buy the second car.. ");
    }else{
        printf("i cant afford either car ");
    }
    
     
    NSLog(@"Now that i bought the car he offers me tires for it.");
    
   
    
    float oneTire = 50.00;
    float twoTires = 99.99;
    float threeTires = 199.99;
     float fourTires = 299.99;
    
    //does the car need tires and i have money to buy 4?
    if((doesNeedTires) && (carsTotal > fourTires)){
        printf(" Car needs Tires but how much are they?? ");
    };
    //loops through price of tires
    for (int a = 1; a <=2 ; a++) {
        
        NSLog(@"%.2f for 1 tire %.2f for two tires %.2f for three tires %.2f for four tires.", oneTire, twoTires, threeTires, fourTires);
        
    }
    
    
    //looping through number of tires
    int tires = 1;
    
    while (tires < 5){
        //ns log
        NSLog(@" %i tire", tires);
        
    //increment
    tires++;
        
    }
    NSLog(@"Four tires bought now to subtract that from my remainder from the car %.2f", carsTotal);
    int cashLeft;
    
    //cash left from the whole deal
   cashLeft = carsTotal-fourTires;
    NSLog(@"%i dollars Left from my car purchase and New tires! %c made out!", cashLeft,name);
    
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
