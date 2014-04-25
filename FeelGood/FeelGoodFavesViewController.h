//
//  FeelGoodFavesViewController.h
//  FeelGood
//
//  Created by Cyril Saade on 4/23/14.
//  Copyright (c) 2014 GAI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeelGoodFavesViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{

    IBOutlet UITableView *sandwiches;
    NSArray *tableviewdatasource;
}
    

@end
