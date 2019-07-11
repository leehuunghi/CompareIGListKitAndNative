//
//  HNCorlorMangerViewController.m
//  CollectionViewItemAnimations
//
//  Created by LAP12843 on 7/11/19.
//  Copyright © 2019 nd. All rights reserved.
//

#import "HNCorlorMangerViewController.h"
#import <IGListKit/IGListKit.h>

@interface HNCorlorMangerViewController ()<IGListAdapterDataSource>

@property (nonatomic) IGListAdapter *colorIGAdapter;

@property (nonatomic) UICollectionView *collectionView;

@end

@implementation HNCorlorMangerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configView];
    [self configIGListKit];
}

- (void)configView {
    
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    
    // Allocate and configure a collection view
    UICollectionView * collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.bounces = YES;
    collectionView.alwaysBounceVertical = YES;
    self.collectionView = collectionView;
    
    // Add to view
    [self.view addSubview:collectionView];
    
}

- (void)configIGListKit {
    
}



@end
