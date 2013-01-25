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
    
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 90.0f, 200.0f, 60.0f)];
    if (label2 != nil) {
        label2.backgroundColor = [UIColor grayColor];
        label2.text= @"Please Enter Username";
        label2.textAlignment = NSTextAlignmentLeft;
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
        [self.view addSubview:button];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick
{
    NSString *userText = [textField text];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
