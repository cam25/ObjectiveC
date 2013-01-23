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

    
    int numberOne = 100;//compare variable
    int numberTwo = 100;//compare variable
    BOOL compare = [self Compare:numberOne numberTwo:numberTwo];// bool method call
    NSInteger payCheck1 = 124;//addition variable
    NSInteger payCheck2 = 130;//addition variable
    
    NSInteger total;
    total = [self add:payCheck1 payCheck2:payCheck2];
    NSNumber *total2 = [[NSNumber alloc] initWithInt:total];
    NSString *stringTotal1 = [total2 stringValue];
    
    
    NSString *compareString = [NSString stringWithFormat:@"%i %i",numberOne,numberTwo];// string to combine both integers to pass into display function
    
    if (compare == YES) {
        
        [self displayAlertWithString:compareString];//displayAlertWithString call with compareString passed
    }
    
    NSString *newAlert = @"NewStringString1 String2";//combined strings from append method
    
    
    NSString *stringTotal = [NSString stringWithFormat:@"The Total is %@", stringTotal1];//stringTotal variable holding the value of NSNumber which is now coverted to NSString to pass into displayAlertWithString function
    
    //calls
    NSString *append = [self append:@"String1" string2:@"String2" ];// append method call with two string parameters
    
    [self displayAlertWithString:stringTotal];// displayAlertWithString method call with variable equal to return of append function string

    [self displayAlertWithString:append];//string append alert call
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

//adding function
-(int)add:(int)payCheck1 payCheck2:(int)payCheck2
{
    
    int total = payCheck1 + payCheck2;//total variable holding value of added integers
    NSLog(@"%d", total);
    

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
    [newString appendString:[NSString stringWithFormat:@"%@ %@",string1,string2]];//appending newString in with other two NSStrings
    
    NSLog(@"%@", newString);
    return newString;//returning combined strings as a new string
    
    
    
}

//displayAlertWithString
-(NSString*)displayAlertWithString:(NSString*)string//displayAlertWithString function with NSString variable
{

    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"New" message:string delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    if(alertView != nil){
        [alertView show];
    }
return @"";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
