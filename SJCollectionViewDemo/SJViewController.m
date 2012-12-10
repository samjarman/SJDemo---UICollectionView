//
//  SJViewController.m
//  SJCollectionViewDemo
//
//  Created by Samstrix Apps on 18/11/12.
//  Copyright (c) 2012 Samstrix Apps. All rights reserved.
//

#import "SJViewController.h"

@interface SJViewController ()

@end

@implementation SJViewController

#pragma mark - UICollectionView Methods


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //Set up the item
    static NSString *CellIdentifier = @"Cell";

    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];

    
    UIView *v = [viewArray objectAtIndex:indexPath.row];
    v.frame = cell.frame;
    cell.backgroundView = v;


    [cell setBackgroundColor:[UIColor clearColor]];
    
    return cell;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [viewArray count];
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
    
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    
    return 5;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    
    return 2;
}


#pragma mark – UICollectionViewDelegateFlowLayout


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    float width = arc4random()%100 + 5;
    float height = arc4random()%100 + 5;
    
    return CGSizeMake(width, height);
}



#pragma mark – Other
-(void)populateViewArray{
    for (int i = 0; i < 1000; i++) {
        UIView *myItem = [[UIView alloc] init];
        
        //Random Colour
        float red = (arc4random()%100) / 100.0;
        float green = (arc4random()%100) / 100.0;
        float blue = (arc4random()%100) / 100.0;
        myItem.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1];
        
        [viewArray addObject:myItem];
        
    }
    
}

-(BOOL)shouldAutorotate{
    return YES;
}

- (void)viewDidLoad
{


    [_theCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    viewArray = [NSMutableArray array];
    [self populateViewArray];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
