//
//  ColorSectionController.m
//  CollectionViewItemAnimations
//
//  Created by LAP12843 on 7/11/19.
//  Copyright © 2019 nd. All rights reserved.
//

#import "ColorSectionController.h"

@interface ColorSectionController()<IGListBindingSectionControllerDataSource>

@end

@implementation ColorSectionController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dataSource = self;
    }
    return self;
}

- (NSArray<id<IGListDiffable>> *)sectionController:(IGListBindingSectionController *)sectionController
                               viewModelsForObject:(id)object {
    
}

- (UICollectionViewCell<IGListBindable> *)sectionController:(IGListBindingSectionController *)sectionController
                                           cellForViewModel:(id)viewModel
                                                    atIndex:(NSInteger)index {
    
}

- (CGSize)sectionController:(IGListBindingSectionController *)sectionController
           sizeForViewModel:(id)viewModel
                    atIndex:(NSInteger)index {
    
}


@end
