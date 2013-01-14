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
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 220.0f, 20.0f)];
    if (label1 != nil) {
        label1.backgroundColor = [UIColor redColor];
        label1.text= @"The DaVinci Code";
        label1.textAlignment = UITextAlignmentCenter;
        
    }
    [self.view addSubview:label1];
    
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 90.0f, 20.0f)];
    if (label2 != nil) {
        label2.backgroundColor = [UIColor blueColor];
        label2.textAlignment = UITextAlignmentRight;
        label2.text = @"Author:";
        label2.textColor = [UIColor purpleColor];
    }
    
    [self.view addSubview:label2];
    
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 40.0f, 130.0f, 20.0f)];
    if (label3 != nil) {
        label3.backgroundColor = [UIColor magentaColor];
        label3.textAlignment = UITextAlignmentLeft;
        label3.text = @"Dan Brown";
        label3.textColor = [UIColor blackColor];
    }
    
    [self.view addSubview:label3];
    
    label4 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 90.0f, 20.0f)];
    if (label4 != nil) {
        label4.backgroundColor = [UIColor greenColor];
        label4.textAlignment = UITextAlignmentRight;
        label4.text = @"Pubished:";
        label4.textColor = [UIColor redColor];
    }
    
    [self.view addSubview:label4];
    
    label5 = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 70.0f, 130.0f, 20.0f)];
    if (label5 != nil) {
        label5.backgroundColor = [UIColor yellowColor];
        label5.textAlignment = UITextAlignmentLeft;
        label5.text = @"3/28/2006";
        label5.textColor = [UIColor orangeColor];
    }
    
    [self.view addSubview:label5];
    
    label6 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 90.0f, 20.0f)];
    if (label6 != nil) {
        label6.backgroundColor = [UIColor lightGrayColor];
        label6.textAlignment = UITextAlignmentLeft;
        label6.text = @"Summary:";
        label6.textColor = [UIColor brownColor];
    }
    
    [self.view addSubview:label6];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
