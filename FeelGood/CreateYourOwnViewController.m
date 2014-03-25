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

@synthesize selectedingredient;
@synthesize breadsandwich;

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
    self.selectedingredient=[[NSMutableArray alloc] initWithCapacity:20];
    [super viewDidLoad];
    
    self.tabNumber = 0;
	// Do any additional setup after loading the view.
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    self.array = [[NSMutableArray alloc]initWithCapacity:6];
    //Indexzero
    NSMutableArray * array0 = [NSMutableArray new];
    //this array is for the bread
    [array0 addObject:@"whitebread"];
    [array0 addObject:@"wheatbread"];
    
    NSMutableArray * array1 = [NSMutableArray new];
    //this array is for the cheese
    [array1 addObject:@"cheddar cheese"];
    [array1 addObject:@"jack cheese"];
    [array1 addObject:@"mozzarella"];
    
    NSMutableArray * array2 = [NSMutableArray new];
    //this array is for the veggies
    [array2 addObject:@"tomato"];
    [array2 addObject:@"mushrooms"];
    [array2 addObject:@"jalapenosfix"];
    [array2 addObject:@"peppers and onions"];
    [array2 addObject:@"basil"];
    [array2 addObject:@"black beans"];
    
    NSMutableArray * array3 = [NSMutableArray new];
    //this array is for the sauces
    [array3 addObject:@"balsamic"];
    [array3 addObject:@"marinara"];
    [array3 addObject:@"salsa"];
    
    NSMutableArray * array4 = [NSMutableArray new];
    //this array is for the seasoning
    [array4 addObject:@"salt&pepper"];
    [array4 addObject:@"cinnamon"];
    [array4 addObject:@"oregano"];
    
    NSMutableArray * array5 = [NSMutableArray new];
    //this array is for the other
    [array5 addObject:@"apple slices"];
    [array5 addObject:@"honey"];
    [array5 addObject:@"granola"];
    [array5 addObject:@"tortilla chips"];
    
    
    [self.array addObject:array0];
    [self.array addObject:array1];
    [self.array addObject:array2];
    [self.array addObject:array3];
    [self.array addObject:array4];
    [self.array addObject:array5];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
int nametab=0;
- (IBAction)segmentbutton:(id)sender {
    

    if (ingredients.selectedSegmentIndex != 0 && [self.selectedingredient count]==0)
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Select a bread first! " delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        ingredients.selectedSegmentIndex = 0;
        return;
    }
    
    nametab = ingredients.selectedSegmentIndex;
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
    NSLog(@"%d", indexPath.item);
    [self.selectedingredient addObject:[NSString stringWithFormat:@"%i-%i",nametab, indexPath.item ]];
    NSLog(@"%@",self.selectedingredient);
    if ( nametab==0)
    {
        [self.breadsandwich setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bread-%i.png", indexPath.item]]];
    }
}
@end
