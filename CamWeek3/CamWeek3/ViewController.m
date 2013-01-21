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
   int payCheck1 = 124;
  int payCheck2 = 130;
    [self add:payCheck1 payCheck2:payCheck2];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

//adding function
-(int)add:(int)payCheck1 payCheck2:(int)payCheck2

{
    
    int total;
    return(payCheck1 + payCheck2);
    
    NSLog(@"%i + %i = %i", payCheck1,payCheck2, total);
}
//boolean

    


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
