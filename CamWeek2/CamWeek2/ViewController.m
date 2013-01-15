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
    self.view.backgroundColor = [UIColor brownColor];
    
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 220.0f, 20.0f)];
    if (label1 != nil) {
        label1.backgroundColor = [UIColor redColor];
        label1.text= @"The DaVinci Code";
        label1.textAlignment = NSTextAlignmentCenter;
        label1.textColor = [UIColor colorWithRed:0.231 green:0.667 blue:0.957 alpha:1];
        
    }
    [self.view addSubview:label1];
    
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 90.0f, 20.0f)];
    if (label2 != nil) {
        label2.backgroundColor = [UIColor blueColor];
        label2.textAlignment = NSTextAlignmentRight;
        label2.text = @"Author:";
        label2.textColor = [UIColor purpleColor];
    }
    
    [self.view addSubview:label2];
    
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 40.0f, 130.0f, 20.0f)];
    if (label3 != nil) {
        label3.backgroundColor = [UIColor magentaColor];
        label3.textAlignment = NSTextAlignmentLeft;
        label3.text = @"Dan Brown";
        label3.textColor = [UIColor blackColor];
    }
    
    [self.view addSubview:label3];
    
    label4 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 90.0f, 20.0f)];
    if (label4 != nil) {
        label4.backgroundColor = [UIColor greenColor];
        label4.textAlignment = NSTextAlignmentRight;
        label4.text = @"Pubished:";
        label4.textColor = [UIColor redColor];
    }
    
    [self.view addSubview:label4];
    
    label5 = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 70.0f, 130.0f, 20.0f)];
    if (label5 != nil) {
        label5.backgroundColor = [UIColor yellowColor];
        label5.textAlignment = NSTextAlignmentLeft;
        label5.text = @"3/28/2006";
        label5.textColor = [UIColor orangeColor];
    }
    
    [self.view addSubview:label5];
    
    label6 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 90.0f, 20.0f)];
    if (label6 != nil) {
        label6.backgroundColor = [UIColor lightGrayColor];
        label6.textAlignment = NSTextAlignmentLeft;
        label6.text = @"Summary:";
        label6.textColor = [UIColor brownColor];
    }
    
    [self.view addSubview:label6];
    
    label7 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 130.0f, 220.0f, 230.0f)];
    if (label7 != nil) {
        label7.backgroundColor = [UIColor cyanColor];
        label7.textAlignment = NSTextAlignmentLeft;
        label7.text = @"This book is about college professor who investigates a murder that took place in Paris's Lourvre Museum in which he finds out that there is a possiblity of Jesus Christ having a spouse named Mary Magdelene. So the professor seeks about Paris's various mueseums to find the truth.";
        label7.textColor = [UIColor colorWithRed:0.031 green:0.271 blue:0.212 alpha:1];
        label7.numberOfLines = 14;
    }
    
    [self.view addSubview:label7];
    
    
    
    NSString *item1 = @"HolyGrail";
    NSString *item2 = @"Bible";
    NSString *item3 = @"Airplane";
    NSString *item4 = @"Car";
    NSString *item5 = @"Painting";
    
    NSArray  *itemArray = [NSArray arrayWithObjects: item1,item2,item3,item4,item5,nil];
    
    for (int i = 0; i < itemArray.count; i++)
    {
        NSLog(@"%@",itemArray);
    }

    
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:@"HolyGrail,Bible,Airplane,Car,Painting"];
    [mutableString insertString:@"and " atIndex:29];


 
    label8 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 370.0f, 100.0f, 20.0f)];
    if (label8 != nil) {
        label8.backgroundColor = [UIColor colorWithRed:1 green:0.471 blue:0 alpha:1];
        label8.textAlignment = NSTextAlignmentLeft;
        label8.textColor = [UIColor colorWithRed:0.149 green:0.016 blue:1 alpha:1];
        label8.text = @"List of items:";
        

    }
    
    [self.view addSubview:label8];
    
    label9 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 400.0f, 220.0f, 50.0f)];
    if (label9 != nil) {
        label9.backgroundColor = [UIColor colorWithRed:0.055 green:0.616 blue:0.216 alpha:1] ;
        label9.textAlignment = NSTextAlignmentCenter;
        label9.textColor = [UIColor colorWithRed:0.204 green:0.361 blue:0.4 alpha:1];
        label9.text = mutableString;
        label9.numberOfLines = 3;
        
        
    }
    
    [self.view addSubview:label9];
    
 
    //NSMutableArray *listItems = [[NSMutableArray alloc] initWithCapacity: 5]; [listItems addObject: @"string"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
