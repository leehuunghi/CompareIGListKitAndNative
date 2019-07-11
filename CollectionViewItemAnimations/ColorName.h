//
//  ColorName.h
//  CollectionViewItemAnimations
//
//  Created by Nick Donaldson on 8/27/13.
//  Copyright (c) 2013 nd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListKit.h>

// Yep. It has a color and a name.

@interface ColorName : NSObject<IGListDiffable>

@property (nonatomic, strong) UIColor * color;
@property (nonatomic, strong) NSString * name;

+ (ColorName*)colorNameWithColor:(UIColor*)color name:(NSString*)name;

@end

@interface ColorName (Random)

+ (ColorName*)randomColorName;


@end
