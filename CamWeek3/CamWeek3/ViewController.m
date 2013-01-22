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

    [self add:payCheck1 payCheck2:payCheck2];// addition method call
    [self Compare:numberOne numberTwo:numberTwo];//bool method call
    [self append:@"String1" string2:@"String2"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

//adding function
-(int)add:(int)payCheck1 payCheck2:(int)payCheck2
{
    
    int total = payCheck1 + payCheck2;
    return(total);
    NSLog(@"%d", total);
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
-(int)append:(NSString*)string1 string2:(NSString*)string2
{
    NSMutableString *newString = [[NSMutableString alloc] initWithFormat:@"NewString"];
    [newString appendString:[NSString stringWithFormat:@"%@ %@",string1,string2]];
    
    NSLog(@"%@", newString);
    return newString;

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
