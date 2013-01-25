//
//  ViewController.m
//  CamWeek4
//
//  Created by Cameron Mozie on 1/24/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 100.0f, 20.0f)];
    if (username != nil) {
        username.backgroundColor = [UIColor whiteColor];
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
    [self.view addSubview:label2];
    
    textField = [[UITextField alloc] initWithFrame:CGRectMake(90.0f, 10.0f, 200.0f, 30.0f)];
    if (textField != nil) {
        textField.borderStyle = UITextBorderStyleRoundedRect;
       
        [self.view addSubview:textField];
    }
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil) {
        button.frame = CGRectMake(189.0f, 50.0f, 100.0f, 40.0f);
        [button setTitle:@"Login" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        button.tag = 1;
        [self.view addSubview:button];
    }
    
    UIButton *showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDate != nil) {
        showDate.frame = CGRectMake(10.0f, 300.0f, 100.0f, 40.0f);
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [showDate addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        button.tag = 2;
        [self.view addSubview:showDate];
    }
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil) {
        infoButton.frame = CGRectMake(10.0f, 200.0f, 20.0f, 400.0f);

        [self.view addSubview:infoButton];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//on button click
- (void)onClick:(UIButton*)button
{
    NSString *userText = [textField text];
    
    //button condition
    if (userText.length < 1) {//if userText is less than 1 username cannot be empty
        label2.text =  @"Username cannot be empty";
        
    }else if(userText.length > 1)//else if userText entered is greater than 1 store username
        label2.text = @"User: username has been logged in";
    NSLog(@"%@", userText);
    
    if (button.tag == 2) {
        UIAlertView *showDateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:@"date" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    }
    
    }



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
