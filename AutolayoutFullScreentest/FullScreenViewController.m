//
//  FullScreenViewController.m
//  AutolayoutFullScreentest
//
//  Created by Rohan on 5/31/13.
//  Copyright (c) 2013 Rohan. All rights reserved.
//

#import "FullScreenViewController.h"
#import "ViewController.h"

@interface FullScreenViewController ()

@end

@implementation FullScreenViewController

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
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerClass:[RDCollectionCell class] forCellWithReuseIdentifier:@"test"];
    self.collectionView.backgroundColor = [UIColor greenColor];

    self.collectionView.pagingEnabled = YES;
    self.collectionView.frame = CGRectMake(0, 0, 320, 568);
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.sectionInset = UIEdgeInsetsZero;
    self.collectionView.collectionViewLayout = flowLayout;

    [self.collectionView reloadData];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void) viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self snapToCellAtIndex:1 withAnimation:NO];
}


- (void) snapToCellAtIndex:(NSInteger)index withAnimation:(BOOL) animated  {
    NSIndexPath *path = [NSIndexPath indexPathForRow:index inSection:0];
    [self.collectionView scrollToItemAtIndexPath:path atScrollPosition:UICollectionViewScrollPositionLeft animated:animated];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(    NSTimeInterval)duration
{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    [self.collectionView reloadData];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation)) {
        return CGSizeMake(400, 300);
    } else {
        return CGSizeMake(320, 400);
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"test" forIndexPath:indexPath];

    cell.backgroundColor = [UIColor redColor];
    UILabel* text = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    text.font = [UIFont systemFontOfSize:30];
    text.text = [NSString stringWithFormat:@"%d", [indexPath row]];

    [cell addSubview:text];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
