//
//  JBPlanetsCollectionViewController.h
//  Planets-Obj-c
//
//  Created by Jon Bash on 2020-01-18.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JBSettingsViewController.h"
#import "JBPlanetCollectionViewCell.h"
#import "JBPlanetsController.h"

NS_ASSUME_NONNULL_BEGIN

@interface JBPlanetsCollectionViewController : UICollectionViewController <UIPopoverPresentationControllerDelegate, UIAdaptivePresentationControllerDelegate>

@property JBPlanetsController *planetsController;

@end

NS_ASSUME_NONNULL_END
