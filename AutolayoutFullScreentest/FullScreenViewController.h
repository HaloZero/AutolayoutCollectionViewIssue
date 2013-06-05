//
//  FullScreenViewController.h
//  AutolayoutFullScreentest
//
//  Created by Rohan on 5/31/13.
//  Copyright (c) 2013 Rohan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FullScreenViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
