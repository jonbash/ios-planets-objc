//
//  JBPlanetCollectionViewCell.h
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JBPlanetCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
