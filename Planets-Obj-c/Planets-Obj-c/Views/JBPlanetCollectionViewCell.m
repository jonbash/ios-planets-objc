//
//  JBPlanetCollectionViewCell.m
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBPlanetCollectionViewCell.h"

@implementation JBPlanetCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] init];
        _nameLabel = [[UILabel alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _imageView = [[UIImageView alloc] initWithCoder:coder];
        _nameLabel = [[UILabel alloc] initWithCoder:coder];
    }
    return self;
}

@end
