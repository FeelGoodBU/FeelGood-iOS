//
//  CreateYourOwnViewController.h
//  FeelGood
//
//  Created by Chris Yip on 2/20/14.
//  Copyright (c) 2014 GAI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateYourOwnViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
{

    IBOutlet UISegmentedControl *ingredients;
    
//Enter all of images labels IBOutlets here
    
//    IBOutlet UIImageView *ingredient1;
    
}
- (IBAction)segmentbutton:(id)sender;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;


@property (strong, nonatomic) IBOutlet UIImageView *breadsandwich;

@property(strong,nonatomic) NSMutableArray *selectedingredient;

@property (strong, nonatomic) IBOutlet UIImageView *cheesesandwich;

@end
