//
//  CreateYourOwnViewController.m
//  FeelGood
//
//  Created by Chris Yip on 2/20/14.
//  Copyright (c) 2014 GAI. All rights reserved.
//

#import "CreateYourOwnViewController.h"

@interface CreateYourOwnViewController ()

@property (nonatomic) NSMutableArray * array;
@property (nonatomic) int tabNumber;

@end

@implementation CreateYourOwnViewController

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
    
    self.tabNumber = 0;
	// Do any additional setup after loading the view.
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    self.array = [[NSMutableArray alloc]initWithCapacity:5];
    //Indexzero
    NSMutableArray * array0 = [NSMutableArray new];
    //this array is for the bread
    [array0 addObject:@"whitebread.png"];
    [array0 addObject:@"wheatbread.png"];
    
    NSMutableArray * array1 = [NSMutableArray new];
    //this array is for the cheese
    [array1 addObject:@"SandwichFeelGood.png"];
    
    NSMutableArray * array2 = [NSMutableArray new];
    //this array is for the veggies
    NSMutableArray * array3 = [NSMutableArray new];
    //this array is for the toppings
    NSMutableArray * array4 = [NSMutableArray new];
    //this array is for the Others
    
    [self.array addObject:array0];
    [self.array addObject:array1];
    [self.array addObject:array2];
    [self.array addObject:array3];
    [self.array addObject:array4];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentbutton:(id)sender {
    if (ingredients.selectedSegmentIndex==0) {
        //whitebreadimage.image=whitebreadimage;
//        [ingredient1 setImage:[UIImage imageNamed:@"whitebread.png"]];
    }
    
    self.tabNumber = ingredients.selectedSegmentIndex;
    [self.collectionView reloadData];
   
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSArray * array = self.array[self.tabNumber];
    return array.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identifer = @"Cell";
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifer forIndexPath:indexPath];
    if (!cell) {
        cell = [[UICollectionViewCell alloc]init];
    }
    UIImageView * button = (UIImageView *)[cell viewWithTag:35];
    NSArray * array = self.array[self.tabNumber];
    NSString  * str = [array objectAtIndex:indexPath.item];
    button.image = [UIImage imageNamed:str];
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger item = indexPath.item;
    NSLog(@"%d",item);
}

@end
