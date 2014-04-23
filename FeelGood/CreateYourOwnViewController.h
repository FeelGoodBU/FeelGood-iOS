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
    int heightCounter;
    IBOutlet UISegmentedControl *ingredients;
    
    IBOutlet UIButton *finishbutton;
    
//Enter all of images labels IBOutlets here
    int nval;
//    IBOutlet UIImageView *ingredient1;
    
}
- (IBAction)segmentbutton:(id)sender;

- (IBAction)undobutton:(id)sender;


@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;


@property (strong, nonatomic) IBOutlet UIImageView *breadsandwich;
@property(strong,nonatomic) NSMutableArray *selectedIngredients;

@property(strong,nonatomic) NSMutableArray *selectedingredient;

@property (strong, nonatomic) IBOutlet UIImageView *cheesesandwich;

@property (weak, nonatomic) IBOutlet UIImageView *veggiesandwich;
@property(weak,nonatomic) IBOutlet UIImageView *saucesandwich;





@end
