//
//  OurStoryViewController.m
//  FeelGood
//
//  Created by Cyril Saade on 2/28/14.
//  Copyright (c) 2014 GAI. All rights reserved.
//

#import "OurStoryViewController.h"

@interface OurStoryViewController ()

@end

@implementation OurStoryViewController

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
    _OurStoryText.layer.borderWidth=.9f;
    _OurStoryText.layer.borderColor=[[UIColor blackColor] CGColor];
    _BackButton.layer.borderWidth=.5f;
    _BackButton.layer.borderColor=[[UIColor blackColor]CGColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.


}

@end
