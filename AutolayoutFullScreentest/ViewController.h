//
//  ViewController.h
//  AutolayoutFullScreentest
//
//  Created by Rohan on 5/30/13.
//  Copyright (c) 2013 Rohan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@interface RDCollectionCell : UICollectionViewCell

@end
