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
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
}

-(int)add:(int)payCheck1 payCheck2:(int)payCheck2

{
    payCheck1 = 124;
    payCheck2 = 130;
    int total;
    return(payCheck1 + payCheck2);
    
    NSLog(@"%i + %i = %i", payCheck1,payCheck2, total);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
