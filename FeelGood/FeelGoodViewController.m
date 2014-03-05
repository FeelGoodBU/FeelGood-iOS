//
//  FeelGoodViewController.m
//  FeelGood
//
//  Created by Chris Yip on 2/20/14.
//  Copyright (c) 2014 GAI. All rights reserved.
//

#import "FeelGoodViewController.h"

//This is the view controller for the main page

@interface FeelGoodViewController ()

@end

@implementation FeelGoodViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    OrderSandwichButton.layer.borderWidth=.10f;
    OrderSandwichButton.layer.borderColor=[[UIColor blackColor]CGColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
