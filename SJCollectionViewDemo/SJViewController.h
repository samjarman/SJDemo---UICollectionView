//
//  SJViewController.h
//  SJCollectionViewDemo
//
//  Created by Samstrix Apps on 18/11/12.
//  Copyright (c) 2012 Samstrix Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SJViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout >{

    NSMutableArray *viewArray;
}

@property (weak, nonatomic) IBOutlet UICollectionView *theCollectionView;
@property (weak, nonatomic) IBOutlet UISlider *numItems;

@end
