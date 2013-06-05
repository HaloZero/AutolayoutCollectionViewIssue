//
//  ViewController.m
//  AutolayoutFullScreentest
//
//  Created by Rohan on 5/30/13.
//  Copyright (c) 2013 Rohan. All rights reserved.
//

#import "ViewController.h"
#import "FullScreenViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerClass:[RDCollectionCell class] forCellWithReuseIdentifier:@"test"];

    self.collectionView.pagingEnabled = YES;
    self.collectionView.frame = [UIScreen mainScreen].bounds;
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;

    self.collectionView.collectionViewLayout = flowLayout;

	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"test" forIndexPath:indexPath];

    cell.backgroundColor = [UIColor greenColor];
    UILabel* text = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    text.font = [UIFont systemFontOfSize:30];
    text.text = [NSString stringWithFormat:@"%d", [indexPath row]];

    [cell addSubview:text];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(320, 300);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    FullScreenViewController* fullScreenController = [[FullScreenViewController alloc] initWithNibName:@"FullScreenViewController" bundle:nil];
    [self presentViewController:fullScreenController animated:YES completion:^{


    }];
}
@end

@implementation RDCollectionCell


@end