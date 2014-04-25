//
//  FeelGoodFavesViewController.m
//  FeelGood
//
//  Created by Cyril Saade on 4/23/14.
//  Copyright (c) 2014 GAI. All rights reserved.
//

#import "FeelGoodFavesViewController.h"

@interface FeelGoodFavesViewController ()

@end

@implementation FeelGoodFavesViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    tableviewdatasource=[[NSArray alloc]initWithObjects:@"Sandwich1",@"Sandwich2",@"Sandwich3", nil]; //do for as many sandwiches that we have
}

-(void)viewWillAppear:(BOOL)animated
{
    sandwiches.delegate=self;
    sandwiches.dataSource=self;
    [super viewWillAppear:YES];
} //I WORTE THAT, IS IT CORRECT ?

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    }

@end
