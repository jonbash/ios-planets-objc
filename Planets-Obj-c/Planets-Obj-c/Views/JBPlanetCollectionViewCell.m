//
//  JBPlanetCollectionViewCell.m
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBPlanetCollectionViewCell.h"

@interface JBPlanetCollectionViewCell()

@property (strong, nonatomic) NSLayoutConstraint *cellWidthConstraint;

@end

@implementation JBPlanetCollectionViewCell

- (void)setCellWidth:(CGFloat) width {
    self.cellWidthConstraint.constant = width;
    self.cellWidthConstraint.active = YES;
}

@end
