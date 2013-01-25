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
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(90.0f, 10.0f, 200.0f, 30.0f)];
    if (textField != nil) {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil) {
        button.frame = CGRectMake(10.0f, 50.0f, 100.0f, 40.0f);
        [button setTitle:@"OK" forState:UIControlStateNormal];
        [self.view addSubview:button];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
