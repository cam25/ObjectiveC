//
//  ViewController.m
//  CamWeek2
//
//  Created by Cameron Mozie on 1/13/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 200.0f, 20.0f)];
    if (label != nil) {
        label.backgroundColor = [UIColor redColor];
        label.text= @"The DaVinci Code";
        label.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:label];
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
