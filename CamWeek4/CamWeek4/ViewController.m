//
//  ViewController.m
//  CamWeek4
//
//  Created by Cameron Mozie on 1/24/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"
#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 80.0f, 20.0f)];
    if (username != nil) {
        username.backgroundColor = [UIColor lightGrayColor];
        username.text= @"Username";
        username.textAlignment = NSTextAlignmentLeft;
        username.textColor = [UIColor blackColor];
    }
    [self.view addSubview:username];
    
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 70.0f)];
    if (label2 != nil) {
        label2.backgroundColor = [UIColor grayColor];
        label2.text= @"Please Enter Username";
        label2.textAlignment = NSTextAlignmentCenter;
        label2.textColor = [UIColor blueColor];
        
    }
    
    
    textField = [[UITextField alloc] initWithFrame:CGRectMake(90.0f, 10.0f, 200.0f, 30.0f)];
    if (textField != nil) {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        
        [self.view addSubview:textField];
    }
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil) {
        button.frame = CGRectMake(90.0f, 50.0f, 200.0f, 40.0f);
        [button setTitle:@"Login" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        button.tag =  BUTTON_ZERO;
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        
        [self.view addSubview:button];
    }
    
    UIButton *showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDate != nil) {
        showDate.frame = CGRectMake(10.0f, 300.0f, 100.0f, 40.0f);
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        showDate.tag = BUTTON_ONE;
        [showDate setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.view addSubview:showDate];
    }
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil) {
        infoButton.frame = CGRectMake(10.0f, 320.0f, 20.0f, 100.0f);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        infoButton.tag = BUTTON_TWO;
        [self.view addSubview:infoButton];
    }
    
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 380.0f, 300.0f, 70.0f)];
    if (label3 != nil) {
        label3.backgroundColor = [UIColor lightGrayColor];
        label3.textAlignment = NSTextAlignmentLeft;
        label3.numberOfLines = 2;
        label3.textColor = [UIColor blueColor];
        
    }
   //sets a tap gesture which 
       
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



//on button click
- (void)onClick:(UIButton*)button
{
    
    switch (BUTTON_ZERO) {
        case 0:
            [textField resignFirstResponder];
            break;
            
        default:
            break;
    }
    
    if(button.tag == BUTTON_ZERO)
    {
        NSString *userText = [textField text];
        [self.view addSubview:label2];//displays label 2 if login button clicked
        
        //button condition
        if (userText.length < 1)//if userText is less than 1 username cannot be empty
            
        {
            label2.text =  @"Username cannot be empty";
            
        } else if (userText.length > 1)//else if userText entered is greater than 1 store username
            
        {
            label2.text =[[NSString alloc] initWithFormat: @"User: %@ has been logged in!", userText];
            NSLog(@"%@", userText);
            
        }
    }
    
    else if (button.tag == BUTTON_ONE) {
        
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        
        //setdate formaters
        [dateFormatter setDateFormat:@" MMMM dd,yyyy hh:mm:ss a zzzz"];
        NSString *showString = [dateFormatter stringFromDate:date];//date formatted to a string for passing into alert
        
        //alert
        UIAlertView *showDateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:showString delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        if (showDateAlert != nil) {
            [showDateAlert show];
        }
    }
    else if (button.tag == BUTTON_TWO) {//if info button clicked display message
        [self.view addSubview:label3];
        label3.text = @"This application was created by: Cameron Mozie";
        
        //toggel for info button if hidden show if shown and info clicked hide label
        if ([label3 isHidden]){
            
            [label3 setHidden:NO];
            
        }
        else if ([label3 isHidden])//adding == NO adds toggle.. although first click doesnt display info label
            [label3 setHidden:YES];
        
    }
    
}

//keyboard function

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end