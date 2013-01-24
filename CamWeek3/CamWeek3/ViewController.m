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

    
    NSInteger numberOne = 100;//compare variable
    NSInteger numberTwo = 100;//compare variable
    BOOL compare = [self Compare:numberOne numberTwo:numberTwo];// bool method call
    NSLog(@"%c",compare);
    
    //adding of int's and passing them in displayAlert function
    NSInteger payCheck1 = 124;//addition variable
    NSInteger payCheck2 = 130;//addition variable
    NSInteger total;//total integer set to hold method call for passing
    total = [self add:payCheck1 payCheck2:payCheck2];
    NSNumber *total2 = [[NSNumber alloc] initWithInt:total];//total2 holds the value of total but converted to NSNumber
    
    NSString *stringTotal1 = [total2 stringValue];//gets string value of total2
    NSLog(@"%@", stringTotal1);
    
    NSString *stringTotal = [NSString stringWithFormat:@"The Total is %@", stringTotal1];//stringTotal variable holding the value of NSNumber which is now coverted to NSString to pass into displayAlertWithString function
    
    if (stringTotal != nil) {//if doesnt = 0 call display function
        
        [self displayAlertWithString:stringTotal];// displayAlertWithString method call with variable equal to return of append function string
    }

    
    //BOOL compare if values are = pass the values to the displayAlertWithString Function
    NSString *compareString = [NSString stringWithFormat:@"%i %i",numberOne,numberTwo];// string to combine both integers to pass into display function
    if (compare == YES) {//if comparisson = YES call display function
        
        [self displayAlertWithString:compareString];//displayAlertWithString call with compareString passed
    }

    //append of two strings and passing to displayAlertWithString function
    NSString *append = [self append:@"String1" string2:@"String2" ];// append method call with two string parameters
    if (append != nil) {
        [self displayAlertWithString:append];//string append alert call
    }
    
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
return string;//returns a string value
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
