//
//  HNCorlorMangerViewController.m
//  CollectionViewItemAnimations
//
//  Created by LAP12843 on 7/11/19.
//  Copyright © 2019 nd. All rights reserved.
//

#import "HNCorlorMangerViewController.h"
#import <IGListKit/IGListKit.h>
#import "ColorName.h"
#import "ColorSectionController.h"

@interface HNCorlorMangerViewController ()<IGListAdapterDataSource>

@property (nonatomic) IGListAdapter *colorIGAdapter;

@property (nonatomic) UICollectionView *collectionView;

@property (nonatomic, strong) NSMutableArray * colorArrays;

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
    IGListAdapterUpdater *contactUpdater = [[IGListAdapterUpdater alloc] init];
    _colorIGAdapter = [[IGListAdapter alloc] initWithUpdater:contactUpdater viewController:self workingRangeSize:4];
    _colorIGAdapter.collectionView = self.collectionView;
    _colorIGAdapter.dataSource = self;
    _colorIGAdapter.experiments |= IGListExperimentBackgroundDiffing;
    
}

#pragma IGListAdapterDataSource

- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    return self.colorArrays;
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    NSParameterAssert([object isKindOfClass:[ColorName class]]);
    return [[ColorSectionController alloc] init];
}


@end
