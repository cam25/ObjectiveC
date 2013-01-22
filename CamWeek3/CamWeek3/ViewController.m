//
//  ViewController.m
//  CamWeek3
//
//  Created by Cameron Mozie on 1/20/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    int numberOne = 100;
    int numberTwo = 100;
    int payCheck1 = 124;
    int payCheck2 = 130;
    [self add:payCheck1 payCheck2:payCheck2];//method call
    [self Compare:numberOne numberTwo:numberTwo];//method call
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

//adding function
-(int)add:(int)payCheck1 payCheck2:(int)payCheck2
{
    
    int total = payCheck1 + payCheck2;
    return(total);
    NSLog(@"%i", total);
}
//boolean
-(BOOL)Compare:(int)numberOne numberTwo:(int)numberTwo
{

    int isEqual = YES;
    int notEqual = NO;
    
    if (numberOne == numberTwo) {
        NSLog(@"YES");
        return isEqual ;
        
    } else {
        NSLog(@"NO");
        return notEqual ;
    }
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
