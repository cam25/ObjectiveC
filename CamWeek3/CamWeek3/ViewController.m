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

//adding function
-(int)add:(int)payCheck1 payCheck2:(int)payCheck2
{
    
    int total = payCheck1 + payCheck2;
    NSLog(@"%d", total);
    NSNumber *total2 = [NSNumber numberWithInt:254];
    
    NSLog(@"%@", total2);
        return(total);
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
//append
-(NSString*)append:(NSString*)string1 string2:(NSString*)string2
{
    NSMutableString *newString = [[NSMutableString alloc] initWithFormat:@"NewString"];//mutable string 
    [newString appendString:[NSString stringWithFormat:@"%@ %@",string1,string2]];//appending newString with other two NSStrings
    
    NSLog(@"%@", newString);
    return newString;
    
    
    
}
//displayAlertWithString
-(void)displayAlertWithString:(NSString*)newAlert alert2:(NSString*)total2//displayAlertWithString function with NSString variable
{

   
    

    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"error" message:newAlert delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    if(alertView != nil){
        [alertView show];
    }
    
}
- (void)viewDidLoad
{
    
    int numberOne = 100;
    int numberTwo = 100;
    int payCheck1 = 124;
    int payCheck2 = 130;
    NSString *newAlert = @"NewStringString1 String2";
    [self add:payCheck1 payCheck2:payCheck2];// addition method call with 2 parameters that are being added
    [self Compare:numberOne numberTwo:numberTwo];// bool method call 
    [self append:@"String1" string2:@"String2" ];// append method call with two string parameters
    [self displayAlertWithString:newAlert alert2:total2];// displayAlertWithString method call with variable equal to return of append function string
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
